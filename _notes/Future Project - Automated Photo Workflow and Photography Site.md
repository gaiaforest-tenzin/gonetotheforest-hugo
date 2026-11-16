---
status: idea — not started
depends on: Minisforum + PhotoPrism being up and running
related: [[../../gaiaforest/_notes/Gaia Forest - running notes.md]] (Image management section)
---

# Future project: automated photo workflow + dedicated photography site

Idea captured 13 Nov 2026, during a session curating photos by hand for the Yuraygir Yatra and New England retreat follow-up posts on `gonetotheforest`. That manual process — look through a folder, pick the best 8-ish shots, write captions, copy into `static/media/`, wire up a gallery — is exactly the thing worth automating once the infrastructure exists.

## Two related but separate pieces

### 1. Automated travel/retreat post workflow
Once PhotoPrism is running on the Minisforum, it already does quality/scene/face clustering and has a documented API. Realistic pipeline:
- Pull candidate photos from a date range / GPS cluster (e.g. "the Yuraygir trip, 25 Oct – 2 Nov")
- Use PhotoPrism's existing ranking to narrow to the strongest handful
- Draft a Hugo event/post file with those images pre-selected, following the existing template conventions on `gonetotheforest` (see any 2025/2026 event post for the current hand-written pattern: intro paragraph, `<!--more-->`, gallery, `## Follow-up` with resources)
- Tenzin reviews/edits rather than starting from a blank page — the judgment calls (which shots are redundant, which have identifiable faces worth being careful about, which photo tells the story) likely stay a lightweight manual review step even with automation, rather than being fully hands-off

This builds on, rather than duplicates, the existing `Image management` backlog item in the Gaia Forest running notes — same canonical-library-outside-the-repos direction, just with an actual content-generation step on top once that library exists.

### 2. Dedicated photography site
Separate from the above — a site for fine-art/travel photography specifically, distinct in character from the dharma/retreat sites. Would include:
- Digital SLR work
- Scanned slides from before the phone-photo era (this part doesn't depend on any of the web tooling — scanning + PhotoPrism ingestion could start independently, on its own timeline, any time)

Fits the existing multi-site pattern (gaiaforest / deepecology / gonetotheforest are already three separate Hugo sites in this same `WebDevelopment` folder) — would just be a fourth site, same structure.

## Bigger picture
Longer-term direction for `gonetotheforest` (the personal site) generally: more visual, more blog-like over time, once this pipeline exists — rather than the current mostly-text event-post format.

## Status
Nothing started. Revisit once the Minisforum + PhotoPrism piece is actually running.
