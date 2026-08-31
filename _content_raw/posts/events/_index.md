---
title: Events
date: 2026-08-22
outputs:
  - HTML
  - JSON
---

<!--
  Tenzin: how to add a new event
  ================================
  Events are filed in year folders, and the filename starts with MM-DD
  (the year is already in the folder, no need to repeat it). So a new
  event goes in e.g. posts/events/2026/11-14-men-aware-retreat.md --
  create the year folder if it doesn't exist yet. That keeps each year's
  events together and in date order in Obsidian, and the URL matches the
  folder path exactly: /posts/events/2026/11-14-men-aware-retreat/.

  Frontmatter like this:

  ---
  title: "Men Aware Nature Retreat"
  date: 2026-11-14
  location: "New England National Park, NSW"
  external_link: "https://www.facebook.com/events/..."
  ---
  A short 1-3 line description here (optional).

  That's it -- no image required. The date field alone decides whether it
  shows under Upcoming or Past (compared automatically against today at
  build time), and external_link (optional) makes the title link straight
  out to the Facebook event -- so people see the real poster/photos there
  instead of us hosting a copy. Leave external_link out and it links to
  this site's own page for the event instead.

  If an event needs a registration contact and there's no external_link
  page to send people to, link to /contact/ in the body text rather than
  pasting a raw mailto: -- keeps organisers' emails off the public page
  and out of scraper/spam reach. See the 2026-08-28 and 2026-08-29 events
  for the pattern.

  This section also outputs a JSON feed (see the "outputs" front matter
  above and layouts/posts/events/list.json.json) at
  https://tenzin.gaiaforest.org/posts/events/index.json -- gaiaforest.org's
  own Events page fetches it at build time to show your events there too,
  so nothing needs to be duplicated by hand. Just keep adding events here
  as normal.

  Writing up an event afterwards
  ================================
  A follow-up is a SERIES OF EDITS TO THIS SAME EVENT FILE -- not a new
  post somewhere else. One event = one file = one page, from first
  announcement through to final write-up, so the number of things to keep
  track of never grows. Just reopen the event's own .md and add to the
  bottom of it. The shape:

  1. The original event description stays exactly as it was, at the top,
     untouched. Put a "<!--more--> line directly under it before you add
     anything else (see the 2026-08-23 Coffs Harbour event). That break
     tells Hugo where the teaser ends, which keeps the events list and
     the gaiaforest.org JSON feed showing just the original blurb rather
     than the whole write-up.

  2. Under the break, a "## Follow-up" heading, then a short paragraph
     summarising how it went, if that feels worth saying.

  3. Then EITHER a hand-picked grid of specific resources --
     {{</* postgrid tags="basic_mindfulness" excludecategories="Event" layout="column" */>}}
     -- or just a tailored list of links you write yourself, or both. Use
     ### sub-headings here so they sit under the ## Follow-up heading.

     Keep the excludecategories="Event" bit on a grid that's meant to list
     resources. Events carry topical tags too, so without it a grid under
     a heading like "Guided meditations" will happily list other EVENTS
     that share the tag, alongside the recordings you actually meant.

  4. Nothing more needed: the page automatically appends a "Further
     resources" section at the very bottom for you.

  About that automatic "Further resources" section: it appears on every
  PAST event, so no past event is ever a dead end, even ones you never
  write anything for. When the event body has no postgrid of its own, it
  shows a tag-matched grid, drawn from this event's own tags, e.g.:

  tags:
    - basic_mindfulness

  TAG CONVENTION: always lowercase_with_underscores, e.g. basic_mindfulness,
  deep_ecology, metta, samatha. Tag matching is case-insensitive but NOT
  punctuation-insensitive, so "Basic Mindfulness" and "basic_mindfulness"
  are two different tags that will not find each other -- sticking to the
  one style is what keeps the cross-referencing working. (Categories are a
  separate, older list still in Title Case: Audio, Video, Event, Retreat.
  Those say what a thing IS; tags say what it's ABOUT.)

  Add whatever topical tags fit -- matching tags on the Resources side is
  what makes the grid relevant.
  No tags set at all just falls back to the broad basic_mindfulness set.
  It draws from Resources AND other Events/News (excluding Events
  themselves, so it doesn't just list other events back at you) -- as
  tagging gets richer across both sides over time, this keeps
  self-improving without template changes. When the body DOES have its
  own postgrid, the automatic grid is skipped and you just get the
  "Browse all Resources ->" link, so the same handful of items don't get
  listed twice in a row on the one page.

  Past events and external_link
  ================================
  Once an event is past, this site's own page takes priority over the
  external listing everywhere: the Events list links past titles straight
  to the on-site page, and external_link demotes to a small muted
  "Original event listing ->" at the very bottom of that page. Anyone
  coming back after attending lands on the write-up and resources rather
  than being sent to an Eventbrite page for an event that's already
  finished. Upcoming events are unchanged -- external_link still claims
  the title link and the prominent "Event details / RSVP ->" line, which
  is exactly what someone wants before the event.
-->
