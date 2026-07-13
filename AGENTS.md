# AGENTS.md

## Project

MkDocs Material site for personal brag documents. Content is markdown in `docs/`. No application code.

## Commands

```bash
mise run serve      # local dev server (http://127.0.0.1:8000)
mise run sync       # uv sync (install deps)
mise run export     # freeze deps to requirements.txt (required before commit if deps changed)
```

## Adding a new year

1. Copy `TEMPLATE.md` → `docs/YYYY.md`
2. Add entry to `nav` in `mkdocs.yml` (nav order = display order, newest first)
3. Run `mise run serve` to verify

## Gotchas

- `requirements.txt` is deployed to GitHub Pages via CI (`pip install -r requirements.txt`). Always `mise run export` after changing `pyproject.toml`.
- CI deploys on push to `main` or `master` — no manual deploy step.
- Nav in `mkdocs.yml` must list every year file or it won't appear on the site.
- List bullet marker is `*`, not `-` (matches existing content style).
