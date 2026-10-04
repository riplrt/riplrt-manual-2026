#!/usr/bin/env bash
# Vercel build: install pinned Quarto and Chrome Headless Shell into the build container, then render
# the HTML site to _book/. Chrome is needed to render the Mermaid diagrams to static SVG at build time.
set -euo pipefail

QUARTO_VERSION="${QUARTO_VERSION:-1.10.18}"
CHROME_VERSION="${CHROME_VERSION:-154.0.8037.92}"
QUARTO_DIR="$PWD/.quarto-cli"
CHROME_DIR="$PWD/.chrome-headless-shell"

if [ ! -x "$QUARTO_DIR/bin/quarto" ]; then
  mkdir -p "$QUARTO_DIR"
  curl -fsSL "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" \
    | tar -xz -C "$QUARTO_DIR" --strip-components=1
fi

# The Vercel build environment sets LANG to a locale the image does not ship; C.UTF-8 is built into
# glibc and always available.
export LANG=C.UTF-8 LC_ALL=C.UTF-8

# Vercel's build image is Amazon Linux 2023; Chrome's shared-library dependencies that it lacks are
# installed with dnf. Skipped on machines where dnf is unavailable or we are not root.
if command -v dnf >/dev/null 2>&1 && [ "$(id -u)" = "0" ]; then
  dnf install -y -q nss nspr atk at-spi2-atk at-spi2-core dbus-libs libX11 libXcomposite libXdamage \
    libXext libXfixes libXrandr mesa-libgbm libxcb libxkbcommon systemd-libs alsa-lib cups-libs \
    pango cairo liberation-fonts >/dev/null
fi

if [ ! -x "$CHROME_DIR/chrome-headless-shell" ]; then
  ZIP="$(mktemp)"
  curl -fsSL -o "$ZIP" "https://storage.googleapis.com/chrome-for-testing-public/${CHROME_VERSION}/linux64/chrome-headless-shell-linux64.zip"
  rm -rf "$CHROME_DIR.tmp" && mkdir -p "$CHROME_DIR.tmp"
  unzip -q "$ZIP" -d "$CHROME_DIR.tmp"
  rm -rf "$CHROME_DIR" && mv "$CHROME_DIR.tmp/chrome-headless-shell-linux64" "$CHROME_DIR"
  rm -rf "$CHROME_DIR.tmp" "$ZIP"
fi
export QUARTO_CHROMIUM="$CHROME_DIR/chrome-headless-shell"

"$QUARTO_DIR/bin/quarto" --version
"$QUARTO_CHROMIUM" --version
"$QUARTO_DIR/bin/quarto" render
