---
name: suggested_commands
description: Key development commands for the code-server project
type: project
---

## Build
- `npm run build` — build code-server (runs `ci/build/build-code-server.sh`)
- `npm run build:vscode` — build VS Code dependency
- `npm run watch` — dev watch mode (uses ts-node, sets VSCODE_DEV=1)

## Test
- `npm run test:unit` — unit tests (Jest, `ci/dev/test-unit.sh`)
- `npm run test:integration` — integration tests
- `npm run test:e2e` — Playwright e2e tests
- `npm run test:scripts` — shell script tests

## Lint / Format
- `npm run fmt` — runs prettier + doctoc
- `npm run prettier` — format all files with prettier
- `npm run lint:ts` — ESLint on TypeScript files (max-warnings=0)
- `npm run lint:scripts` — lint shell scripts

## Release
- `npm run release` — build release artifacts
- `npm run package` — build packages
- `npm run publish:npm` / `npm run publish:docker` — publish

## Other
- `npm run clean` — clean build artifacts
- `npm run icons` — generate icons
