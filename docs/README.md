# code-server

[!["GitHub Discussions"](https://img.shields.io/badge/%20GitHub-%20Discussions-gray.svg?longCache=true&logo=github&colorB=purple)](https://github.com/coder/code-server/discussions) [!["Join us on Slack"](https://img.shields.io/badge/join-us%20on%20slack-gray.svg?longCache=true&logo=slack&colorB=brightgreen)](https://coder.com/community) [![Twitter Follow](https://img.shields.io/twitter/follow/CoderHQ?label=%40CoderHQ&style=social)](https://twitter.com/coderhq) [![Discord](https://img.shields.io/discord/747933592273027093)](https://discord.com/invite/coder) [![codecov](https://codecov.io/gh/coder/code-server/branch/main/graph/badge.svg?token=5iM9farjnC)](https://codecov.io/gh/coder/code-server) [![See latest](https://img.shields.io/static/v1?label=Docs&message=see%20latest&color=blue)](https://coder.com/docs/code-server/latest)

Run [VS Code](https://github.com/Microsoft/vscode) on any machine anywhere and
access it in the browser.

![Screenshot](./assets/screenshot-1.png)
![Screenshot](./assets/screenshot-2.png)

## Highlights

- Code on any device with a consistent development environment
- Use cloud servers to speed up tests, compilations, downloads, and more
- Preserve battery life when you're on the go; all intensive tasks run on your
  server

## Requirements

See [requirements](https://coder.com/docs/code-server/latest/requirements) for minimum specs, as well as instructions
on how to set up a Google VM on which you can install code-server.

**TL;DR:** Linux machine with WebSockets enabled, 1 GB RAM, and 2 vCPUs

## Getting started

There are five ways to get started:

1. Using the [install
   script](https://github.com/coder/code-server/blob/main/install.sh), which
   automates most of the process. The script uses the system package manager if
   possible.
2. Manually [installing
   code-server](https://coder.com/docs/code-server/latest/install)
3. Deploy code-server to your team with [coder/coder](https://cdr.co/coder-github)
4. Using our one-click buttons and guides to [deploy code-server to a cloud
   provider](https://github.com/coder/deploy-code-server) ⚡
5. Using the [code-server feature for
   devcontainers](https://github.com/coder/devcontainer-features/blob/main/src/code-server/README.md),
   if you already use devcontainers in your project.

To install the latest build from this fork's GitHub releases, run:

```bash
TAG=$(curl -fsSL https://api.github.com/repos/vinhnd1998/code-server/releases/latest | awk -F'"' '/"tag_name"/ {print $4; exit}')
VERSION="${TAG#v}"
ARCH="$(uname -m)"; case "$ARCH" in aarch64|arm64) ARCH=arm64 ;; esac
PREFIX="${PREFIX:-$HOME/.local}"
mkdir -p "$PREFIX/lib" "$PREFIX/bin"
curl -fL "https://github.com/vinhnd1998/code-server/releases/download/${TAG}/code-server-${VERSION}-linux-${ARCH}.tar.gz" \
  | tar -C "$PREFIX/lib" -xz
rm -rf "$PREFIX/lib/code-server-${VERSION}"
mv "$PREFIX/lib/code-server-${VERSION}-linux-${ARCH}" "$PREFIX/lib/code-server-${VERSION}"
ln -sf "$PREFIX/lib/code-server-${VERSION}/bin/code-server" "$PREFIX/bin/code-server"
PATH="$PREFIX/bin:$PATH" code-server --version
```

Then add `$HOME/.local/bin` to your `PATH` (most shells already do) and run
`code-server` to start the server.

> Releases currently ship Linux arm64 only (`.tar.gz`, `.deb`, `.rpm`). See the
> [releases page](https://github.com/vinhnd1998/code-server/releases) for all
> available assets.

> **Note**
> To manage code-server for a team on your infrastructure, see: [coder/coder](https://cdr.co/coder-github)

We also have an in-depth [setup and
configuration](https://coder.com/docs/code-server/latest/guide) guide.

## Questions?

See answers to [frequently asked
questions](https://coder.com/docs/code-server/latest/FAQ).

## Want to help?

See [Contributing](https://coder.com/docs/code-server/latest/CONTRIBUTING) for
details.

## Hiring

Interested in [working at Coder](https://coder.com/careers)? Check out [our open
positions](https://coder.com/careers#openings)!

## For Teams

We develop [coder/coder](https://cdr.co/coder-github) to help teams to
adopt remote development.
