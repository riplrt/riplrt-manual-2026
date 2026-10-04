#!/usr/bin/env bash
# Vercel build: install pinned Quarto + TinyTeX into the build container, then render the
# book in every format configured in _quarto.yml (HTML site, whole-manual PDF and DOCX) to _book/.
set -euo pipefail

QUARTO_VERSION="${QUARTO_VERSION:-1.10.18}"
TINYTEX_VERSION="${TINYTEX_VERSION:-v2026.10}"
QUARTO_DIR="$PWD/.quarto-cli"
TINYTEX_DIR="$PWD/.tinytex"

if [ ! -x "$QUARTO_DIR/bin/quarto" ]; then
  mkdir -p "$QUARTO_DIR"
  curl -fsSL "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" \
    | tar -xz -C "$QUARTO_DIR" --strip-components=1
fi

if [ ! -x "$TINYTEX_DIR/bin/x86_64-linux/lualatex" ]; then
  mkdir -p "$TINYTEX_DIR"
  curl -fsSL "https://github.com/rstudio/tinytex-releases/releases/download/${TINYTEX_VERSION}/TinyTeX-${TINYTEX_VERSION}.tar.gz" \
    | tar -xz -C "$TINYTEX_DIR" --strip-components=1
fi
export PATH="$TINYTEX_DIR/bin/x86_64-linux:$PATH"

"$QUARTO_DIR/bin/quarto" --version
lualatex --version | head -1
"$QUARTO_DIR/bin/quarto" render
