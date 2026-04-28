---
name: project_overview
description: High-level overview of the code-server project — purpose, tech stack, and structure
type: project
---

## Purpose
code-server runs VS Code on a remote server, accessible via a browser. It wraps the VS Code codebase (vendored in `lib/vscode`) with a Node.js/Express server layer.

## Tech Stack
- TypeScript (strict mode, CommonJS modules, target ES6)
- Node.js / Express for the server
- Browser-side TypeScript for the web UI
- Vue (listed in Serena languages)
- Bash scripts for CI/build pipeline
- Prettier + ESLint for formatting/linting
- Playwright for e2e tests, Jest for unit/integration tests

## Project Structure
- `src/` — TypeScript source (node/, browser/, common/ subdirectories)
- `ci/` — Build and dev scripts (build/, dev/, steps/, release-image/, helm-chart/)
- `lib/` — Vendored VS Code (`lib/vscode/`)
- `test/` — Test files
- `typings/` — Custom TypeScript type definitions
- `patches/` — Patches applied to VS Code
- `out/` — Compiled output (gitignored)

## Entry Point
`out/node/entry.js` (compiled from `src/node/entry.ts`)
