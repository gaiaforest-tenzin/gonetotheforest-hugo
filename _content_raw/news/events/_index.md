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
  Create a new file in this folder, e.g. news/events/2026-11-men-aware-retreat.md,
  with frontmatter like this:

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
  above and layouts/news/events/list.json.json) at
  https://tenzin.gaiaforest.org/news/events/index.json -- gaiaforest.org's
  own Events page fetches it at build time to show your events there too,
  so nothing needs to be duplicated by hand. Just keep adding events here
  as normal.
-->
