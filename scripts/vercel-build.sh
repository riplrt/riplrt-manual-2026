#!/usr/bin/env bash
# Vercel build: install a pinned Quarto into the build container and render the HTML book to _book/.
set -euo pipefail

QUARTO_VERSION="${QUARTO_VERSION:-1.10.18}"
QUARTO_DIR="$PWD/.quarto-cli"

if [ ! -x "$QUARTO_DIR/bin/quarto" ]; then
  mkdir -p "$QUARTO_DIR"
  curl -fsSL "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" \
    | tar -xz -C "$QUARTO_DIR" --strip-components=1
fi

"$QUARTO_DIR/bin/quarto" --version
"$QUARTO_DIR/bin/quarto" render --to html
