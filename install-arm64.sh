#!/usr/bin/env bash
set -euo pipefail

REPO=vinhnd1998/code-server
PREFIX="${PREFIX:-$HOME/.local}"

ARCH="$(uname -m)"
case "$ARCH" in
  aarch64|arm64) ARCH=arm64 ;;
  *) echo "Unsupported arch: $ARCH (this fork ships linux-arm64 only)" >&2; exit 1 ;;
esac

TAG=$(curl -fsSL "https://api.github.com/repos/${REPO}/releases/latest" \
  | awk -F'"' '/"tag_name"/ {print $4; exit}')
VERSION="${TAG#v}"
URL="https://github.com/${REPO}/releases/download/${TAG}/code-server-${VERSION}-linux-${ARCH}.tar.gz"

echo "Installing code-server ${TAG} (linux-${ARCH}) to ${PREFIX}"
mkdir -p "$PREFIX/lib" "$PREFIX/bin"
curl -fL "$URL" | tar -C "$PREFIX/lib" -xz
rm -rf "$PREFIX/lib/code-server-${VERSION}"
mv "$PREFIX/lib/code-server-${VERSION}-linux-${ARCH}" "$PREFIX/lib/code-server-${VERSION}"
ln -sf "$PREFIX/lib/code-server-${VERSION}/bin/code-server" "$PREFIX/bin/code-server"

echo "Installed: $("$PREFIX/bin/code-server" --version | head -n1)"
echo "Add ${PREFIX}/bin to PATH if it isn't already."
