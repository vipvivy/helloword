# Repository Guidelines

## Project Structure & Module Organization

This repository is currently a minimal Git workspace with no application source files committed yet. As code is added, keep the layout predictable and shallow:

- `src/` for application source code.
- `tests/` for automated tests that exercise `src/`.
- `assets/` for static images, fixtures, or sample data.
- `docs/` for longer design notes or contributor documentation.

Place files near the feature they support when possible. For example, a parser implementation might live in `src/parser/`, with tests in `tests/parser/`.

## Build, Test, and Development Commands

No build system or package manager is configured yet. When adding one, document the commands here and keep them runnable from the repository root. Common examples:

- `npm install` or equivalent: install project dependencies.
- `npm run dev`: start a local development server.
- `npm test`: run the full automated test suite.
- `npm run build`: create a production-ready build.

Avoid committing generated dependency folders such as `node_modules/`, build outputs, or local caches.

## Coding Style & Naming Conventions

Follow the conventions of the language or framework introduced into the repository. Prefer consistent, readable names over abbreviations:

- Use `camelCase` for JavaScript/TypeScript variables and functions.
- Use `PascalCase` for classes and UI components.
- Use `snake_case` or `kebab-case` for filenames only if that matches the chosen toolchain.

Configure a formatter or linter early, such as Prettier, ESLint, Ruff, or gofmt, and include the command in this guide.

## Testing Guidelines

Add tests with every meaningful behavior change. Name tests after the behavior being verified, for example `parser_handles_empty_input.test.ts` or `test_parser_handles_empty_input.py`. Keep tests deterministic and avoid depending on external services unless clearly marked as integration tests.

## Commit & Pull Request Guidelines

This repository has no commit history yet, so no local convention exists. Use short, imperative commit messages such as `Add parser tests` or `Create project scaffold`.

Pull requests should include a brief description, the commands run to verify the change, and screenshots for visible UI changes. Link related issues when available and call out any follow-up work.

## Security & Configuration Tips

Do not commit secrets, tokens, private keys, or machine-specific configuration. Use `.env.example` for documented environment variables and keep real `.env` files ignored.
