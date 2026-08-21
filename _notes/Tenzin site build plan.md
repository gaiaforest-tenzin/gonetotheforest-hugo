---
tags: planning, architecture, gonetotheforest
created: 2026-08-21
status: draft - awaiting review
---

# Resurrect gonetotheforest as tenzin.gaiaforest.org

## Context

We need an efficient way to send retreat/class participants follow-up resources (previously done by email). There's already a real, if unfinished, Hugo site at `/Users/alex/WebDevelopment/gonetotheforest` — a WordPress export migrated into Hugo last September, using the same `hugo-starter-netlify-cms` template and methodology as the (now mature, deployed) `gaiaforest` site. It stalled before a planned redesign and was never connected to git or deployed.

built and hardened a proven pattern with gaia forest site: (Obsidian-friendly `_content_raw/` → conversion script → gitignored `content/` → Netlify rebuilds fresh from source on every deploy; a reusable multilingual placeholder shortcode; per-language menus). 

**Decisions confirmed
- Hosting: **subdomain** `tenzin.gaiaforest.org` Own independent repo, own Netlify site, deployed/managed separately from Gaia Forest.
- Branding: distinct minimalist personal identity: humble, understated, blog-like, text emphasis rather than hero images.  Borrows Gaia Forest's look and feel in fonts, minimal centered-wordmark layout convention.  Use Gaia Forest seal to link to the parent site (effectively my home monastery).
- Existing WordPress-migrated content (dharma, ecophilosophy, meditation, myth-and-memory, yatra, yoga sections; ~35 posts) is **left untouched for now**, moved to drafts — empty placeholders or HTML-polluted export debris.
- Priority: retreat-resources use case: bio, working audio embeds (SoundCloud — personal plus IBA account), multilingual vocabulary/topic sheets, and the already-configured Donorbox donation portal. Movement-practice video is next on the list, followed by (selected) blog posts.
- photography portfolio is a longer effort, can wait for now.

## Phase 0 — Foundation: git, repo, deploy pipeline

1. `git init` in `/Users/alex/WebDevelopment/gonetotheforest`, add a `.gitignore` modeled on gaiaforest's corrected one (`content/`, `public/`, `.DS_Store`, resources/ etc. — **not** the mistake of committing generated `content/`).
2. Rename the existing `content/` → `_content_raw/` (this is genuinely a migration step, since the current content already lives in `content/` directly with no conversion step). Copy and adapt gaiaforest's `gf-convert_obsidian_links.sh` for this site's needs (same core job: copy `_content_raw/` → `content/`, convert Obsidian-style wikilinks to Hugo URLs).
3. Add `netlify.toml`:
   ```toml
   [build]
     command = "./gf-convert_obsidian_links.sh && hugo --gc --minify"
     publish = "public"
   ```
   Built correctly from the start this time — content/ is never committed, so there's no risk of the "stale build" bug we found and fixed on gaiaforest tonight.
4. Update `config.toml`: `baseURL = "https://tenzin.gaiaforest.org"`.
5. Create a new empty GitHub repo and a new Netlify site pointed at it, with the custom domain `tenzin.gaiaforest.org` added and DNS configured (a CNAME/ALIAS record under the `gaiaforest.org` zone) — these are account-level actions in the GitHub/Netlify/DNS dashboards that Tenzin needs to either do himself or explicitly hand off (no API access to any of these from here); exact click-by-click steps to be given when we get there, same as the GitHub-collaborator setup earlier tonight.
6. First commit + push; confirm the Netlify build succeeds end-to-end (same clean-rebuild verification approach used on gaiaforest tonight before trusting a new build command).

## Phase 1 — Distinct-but-related branding

Build gonetotheforest's own `layouts/partials/header.html`, `nav.html`, `footer.html` (currently unmodified starter-theme boilerplate) by copying gaiaforest's `header.html` CSS-based wordmark technique as-is (same fonts — Cormorant Garamond / Estonia — same letter-spacing/layout approach, no inserted logo image, confirmed with Tenzin), swapping only the text and seal:
- Title: "gone to the forest" (lowercase, matching the source's lowercase "gaïa forest" styling)
- Subtitle: "Ven. Ngawang Tenzin (Dr. Alex Anderson)" in place of gaiaforest's tagline
- Seal image: Gaia Forest's seal used as a temporary placeholder until Tenzin supplies his own personal seal image to swap in

This phase is lower priority than Phase 2's urgent content, but cheap to do early since it's mostly copying/adapting three small partials — worth doing right after Phase 0 so subsequent content pages render in their real look rather than default starter-theme styling.

## Phase 2 — Urgent content (retreat follow-up resources)

- **Bio/CV**: `_content_raw/bio/index.md` already exists with a photo but no written text. Reuse relevant material from gaiaforest's existing bio (`gaiaforest/_content_raw/about/bios/br-tenzin-dr-alex-anderson/_index.md`, ~350 words) as a starting point, expanded with CV-style structure (Tenzin to supply/confirm specifics — teaching lineage, qualifications, etc.).
- **SoundCloud audio**: no Hugo built-in shortcode exists for this (unlike YouTube/Vimeo). Build `layouts/shortcodes/soundcloud.html` — a small iframe wrapper, same convention as gaiaforest's `donorbox_gold.html`. Fix the three broken embed posts (`2022-11-26-audio-heart-sutra-in-sanskrit.md`, `-audio-metta-bhavana-recitation-in-pali.md`, `-audio-transference-of-merit-in-pali.md` — currently empty `wp-block-embed__wrapper` divs from the WordPress export) once Tenzin supplies the real track URLs, plus new posts for his Kathmandu institute's recordings.
- **Multilingual vocabulary/topic sheets**: new section (there's already a stub at `_content_raw/resources/languages/{chinese,pali,sanskrit}/index.md` to build on). Reuse the exact reusable i18n pattern built tonight on gaiaforest: `i18n/<lang>.yaml` + `layouts/shortcodes/translation-pending.html` (copied and adapted into this separate repo) for language variants, so any retreat sheet can go live in one language immediately and get others added incrementally without template changes.
- **Donation portal**: Donorbox is "already set up" per Tenzin. Build a `layouts/shortcodes/donorbox.html` following gaiaforest's `donorbox_gold.html` pattern, using Tenzin's own Donorbox embed code.

## Phase 3 — Deferred (not blocking, later work)

- Movement-practice video pages (trivial once needed — Hugo's built-in `{{< youtube >}}` shortcode already works, no new template required).
- Photography portfolio redesign. The existing PhotoPrism shortcode integration idea (used experimentally on gaiaforest, pointed at a local-only IP) is explicitly on hold; Tenzin had problems with it. A simpler static-image-grid or external-embed approach can be revisited later.
- WordPress content cleanup/curation and the full "contemplative photography site, Matthew Crompton aesthetic" redesign from Tenzin's original vision.

## Verification

- After Phase 0: run the exact `netlify.toml` build command locally from a clean state (`rm -rf content public resources && ./gf-convert_obsidian_links.sh && hugo --gc --minify`), confirm zero errors, before trusting the real Netlify build — same discipline used on gaiaforest tonight.
- After Phase 0 deploy: confirm `https://tenzin.gaiaforest.org` resolves and serves the site (DNS propagation may take a while — check via `curl`).
- After Phase 1: visually confirm the new header/nav/footer render correctly via `hugo server` locally, on at least one real content page.
- After each Phase 2 item: verify locally via `hugo server` before pushing — particularly the SoundCloud shortcode (confirm the iframe actually plays) and the donation shortcode (confirm the Donorbox form loads).

## Open inputs needed from Tenzin (not blocking the plan, but needed to execute)

- His personal seal image file (the only seal found is Gaia Forest's own).
- Real SoundCloud track URLs for the three broken posts + any new institute recordings.
- Donorbox embed code/ID for gonetotheforest (may differ from gaiaforest's).
- Bio/CV content specifics beyond what's reusable from the gaiaforest bio.
- GitHub repo + Netlify site + DNS setup — needs Tenzin's action or explicit go-ahead per step, as noted in Phase 0.
