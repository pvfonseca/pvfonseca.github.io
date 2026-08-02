#!/usr/bin/env bash
# Wrapper that runs this site's pinned Hugo Extended version, downloading it
# on first use so a fresh machine can build the site without manual setup.
#
# Usage: ./scripts/hugo.sh server
#        ./scripts/hugo.sh --minify
#
# IMPORTANT: keep HUGO_VERSION in sync with netlify.toml (HUGO_VERSION) and
# .github/workflows/gh-pages.yml (hugo-version). Newer Hugo releases removed
# template functions (e.g. getCSV) that this site's theme still relies on,
# so do not bump this to 'latest'.
set -euo pipefail

HUGO_VERSION="0.108.0"

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BIN_DIR="$REPO_ROOT/.hugo-bin"
HUGO_BIN="$BIN_DIR/hugo"

if ! command -v go >/dev/null 2>&1; then
  echo "Warning: Go was not found on PATH. This theme fetches its modules via Hugo Modules, which requires Go." >&2
  echo "Install it first, e.g.: brew install go   (macOS)   or   sudo apt install golang-go   (Debian/Ubuntu)" >&2
  exit 1
fi

if [ ! -x "$HUGO_BIN" ]; then
  echo "Hugo Extended $HUGO_VERSION not found locally. Downloading..."
  mkdir -p "$BIN_DIR"

  case "$(uname -s)" in
    Darwin) PLATFORM="darwin" ;;
    Linux) PLATFORM="linux" ;;
    *) echo "Unsupported OS: $(uname -s)" >&2; exit 1 ;;
  esac
  case "$(uname -m)" in
    x86_64) HARCH="amd64" ;;
    arm64|aarch64) HARCH="arm64" ;;
    *) echo "Unsupported architecture: $(uname -m)" >&2; exit 1 ;;
  esac

  URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_${PLATFORM}-${HARCH}.tar.gz"
  curl -sL "$URL" -o "$BIN_DIR/hugo.tar.gz"
  tar -xzf "$BIN_DIR/hugo.tar.gz" -C "$BIN_DIR" hugo
  rm "$BIN_DIR/hugo.tar.gz"
  chmod +x "$HUGO_BIN"
  echo "Hugo Extended $HUGO_VERSION installed at $HUGO_BIN"
fi

exec "$HUGO_BIN" "$@"
