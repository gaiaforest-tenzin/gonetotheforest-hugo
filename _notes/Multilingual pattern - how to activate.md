---
tags: reference, gonetotheforest
created: 2026-08-21
---

# Multilingual pattern — how to activate

Scaffolding for the reusable gaiaforest i18n pattern is already in place here:

- `i18n/en.yaml`, `i18n/zh.yaml` — UI strings (`translation_pending`, `view_original`)
- `layouts/shortcodes/translation-pending.html` — drop into a stub translated
  page to show an honest "not yet translated" notice with a link back to
  the original.

**This is not yet "live"** in the sense of producing per-language URLs
(`/zh/...`), because `config.toml` doesn't yet have a `[languages]` block.
Right now `{{ i18n "..." }}` calls will resolve fine, but
`.Page.Translations` will always be empty (no per-language content exists
to pair with), so the shortcode degrades gracefully to just the notice
text with no "view original" link.

## To actually activate multilingual URLs

When there's a first real translated retreat sheet ready to publish, follow
gaiaforest's `config.toml` as the template (`/Users/alex/WebDevelopment/gaiaforest/config.toml`):

1. Add a `[languages]` block with `[languages.en]` and `[languages.zh]`
   (each with its own `languageName`, `weight`, and `[[languages.xx.menu.main]]`
   entries — gaiaforest's menu is defined per-language this way so Hugo
   scopes `.Site.Menus.main` automatically per page language).
2. Set `defaultContentLanguage = "en"` and
   `defaultContentLanguageInSubdir = false` (English at root, other
   languages at `/zh/` etc.).
3. Pair content files using Hugo's language-suffix convention:
   `index.md` (English, default) + `index.zh.md` (Chinese) in the same
   page bundle — Hugo pairs these automatically as translations.
4. For a language variant that doesn't exist yet, create the stub
   `index.zh.md` with just frontmatter + `{{< translation-pending >}}`.

No changes are needed to the shortcode or i18n files themselves — this is
exactly the "add a language without template changes" property the pattern
is designed for.

## Scope note

Doing this now, before there's a real translated sheet to publish, would
mean restructuring URLs for the *entire* existing site (all WordPress-
migrated sections use un-prefixed English URLs today) for no immediate
benefit — so it's deliberately left inactive until it's actually needed.
