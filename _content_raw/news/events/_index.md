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

  Linking to follow-up resources
  ================================
  Once you've built a dedicated resources page for a specific event (like
  the Coffs Harbour "Mindfulness in Nature" one, or the upcoming TCP/KFBG
  ones), point to it by adding one more frontmatter field:

  resources_page: "/resources/your-page-slug/"

  The event's own page then shows a "Resources for this event ->" link
  automatically (see layouts/news/events/single.html). Leave the field out
  and, once the event is in the past, it falls back to a generic "Browse
  all Resources ->" link instead -- so no event is ever a dead end, even
  ones you haven't built anything bespoke for.

  Note this link only ever appears on the event's own page on this site,
  not on the Events list itself -- external_link (when set) claims the
  title link there for the ticket/poster page, same as always. Past events
  get a small second link ("details & resources on this site ->") back to
  the internal page specifically so this is still reachable.
-->
