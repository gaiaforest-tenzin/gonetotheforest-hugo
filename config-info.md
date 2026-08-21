# Gone to the Forest Site Configuration

## Hugo Config Overview
- **Site URL:** https://tenzin.gaiaforest.org
- **Title:** gone to the forest
- **Language:** en-us

## Key Settings
- **HTML in Markdown:** Enabled
- **Description:** Buddhist and ecological retreat experiences

## File Location
`config.toml` (not visible in Obsidian file browser)

## Deploy Pipeline (new, see Phase 0 of build plan)
- Content is authored in `_content_raw/` (Obsidian-friendly).
- `content/` is gitignored and regenerated on every build by
  `gf-convert_obsidian_links.sh`, invoked from `netlify.toml`.
- Never edit `content/` directly -- it's rebuilt from scratch each deploy.

## Manual Updates Required
⚠️ **Update this file when config.toml changes**

## Site Purpose
Buddhist retreat and ecological mindfulness experiences; retreat/class
follow-up resources (bio, audio, multilingual sheets, donations).

---
*Last updated: 2026-08-21*
