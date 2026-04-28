---
name: style_and_conventions
description: Code style and conventions for the code-server TypeScript codebase
type: project
---

## TypeScript
- Strict mode enabled (`"strict": true`)
- `noImplicitReturns`, `noUnusedLocals` enforced
- CommonJS modules (`"module": "commonjs"`)
- `esModuleInterop: true`, `allowSyntheticDefaultImports: true`
- Experimental decorators enabled
- Source maps generated

## Formatting / Linting
- Prettier for formatting (run via `npm run prettier` or `npm run fmt`)
- ESLint with `@typescript-eslint/recommended`, `import/recommended`, `prettier/recommended`
- Zero ESLint warnings allowed (`--max-warnings=0`)
- ESLint auto-fixes on lint run (`--fix` flag)

## No comments by default
- Follow existing patterns in the codebase — no unnecessary comments

## Naming
- Follow existing TypeScript conventions in the codebase (camelCase for variables/functions, PascalCase for classes/interfaces/types)
