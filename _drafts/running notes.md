# Running notes

(New notes added to the top for ease of discovery by Claude. Everything below is a checklist — `- [x]` done, `- [ ]` still open. Tenzin to tick items too if handled something directly.)

## To do

- [ ] add link to personal site from main site (maybe in main menu as well as on about and bio page ??)
- [x] lets change the search menu item to a magnifying glass icon, either that opens a search dialogue, or takes you to the search page... saves space, allows us to increase spacing of letters and menu items in main nav menu, about 10% to start with -- swapped "Search" text for a fa-magnifying-glass icon linking to /search/ (kept it simple, not a JS dialog overlay -- bigger job, revisit if wanted); nav gap 1rem->1.1rem, menu item gap 0.25rem->0.275rem, link horizontal padding .6rem->.66rem, added 0.05em letter-spacing to nav links (all ~10%)
- [x] lets increase the buffer around the Gaia forest seal image in the header by 25% , and also increase it size another 10% it is currently small and crowded by the title -- gap between seal and title 1rem->1.25rem (25%), seal height 60px->66px (10%)
- [x] still you've got that bug where pages show their title twice (one obsidian note title and one hugo title) e.g. "Thank You
Thank You

Your message has been received. I’ll do my best to respond soon." -- was only this one page (checked every page site-wide for the pattern, nothing else matched): contact/success/index.md had both `title: "Thank You"` in frontmatter (renders as h1) AND a redundant `## Thank You` heading as the first line of the body. Removed the body heading.
 - [x] Also, the social links dont appear on the connect page -- content was actually there in both local build and live site when checked (probably a stale cache on your end), but they were a bare bulleted list of text links, easy to miss/mistake for "not there" -- restyled to match the icon treatment used in the header/footer everywhere else.
 - [x] lets have the nav menu with both news and events, now we've saved some space... -- Events promoted into the flat nav row right after News (turned out .Site.Menus.main only yields top-level items -- had to explicitly pull Events out of News's .Children to show it inline)
- [x] the header is looking a little cluttered with all those social links... whats good practice there.  Widen header?  return links to footer? bury under "socials" menu item. -- icons moved back to footer (own row, below the quick-links); renamed Contact page to "Connect" (still at /contact/, no broken links) and added a "Follow" section there listing all 4 platforms alongside the existing contact form; new "Connect" nav item replaces the old header icon cluster (4 icons -> 1 link)
- [x] new event: https://events.humanitix.com/sept-11-13-deep-ecology-coffs-with-john-seed-and-friends -- added as "Deep Ecology: Coffs Harbour, with John Seed and Friends" (Sept 11-13, co-facilitating per Tenzin)
- [x] make news and events one page, rather than needing to click through from news (where there is currently no news) to events via a link.  News section can be a single post displayed, likely a sticky post from the as-yet non-existent posts section. -- built a real /news/posts/ blog section (list.html + single.html + "Posts" menu entry); /news/ auto-shows the single most recent post (title/date/teaser, clickable through to its own page). Un-merged from Events again on second thought, though: embedding the full events list on /news/ meant anyone clicking through to Events for retreat/talk dates got hit with whatever news post was featured (e.g. a fundraising pitch) first, possibly a second time. So News shows the post + a plain "See upcoming events →" link, Events (/news/events/) shows only events, nothing else.
- [x] help me to craft a new post for this slot that is a link to the launch of the donation page - maybe can even simply recycle the post from gaia forest website?  not sure of this ius good practice to syndicate - it would save us some worlk! -- reposted the Gaia Forest fundraising film post verbatim as a real post at /news/posts/2026-07-01-tan-ma-ling-fundraising-film/, "Reposted from Gaia Forest" attribution (Tenzin's own site/post, no syndication caveats needed), <!--more--> break so the /news/ teaser stays short
- [x] slight increase in size of gaia forest seal on both websites?  Its a little small in both, maybe just 15-20% -- bumped 50px -> 60px (20%) on gonetotheforest and gaiaforest headers
- [x] Mailer lite does not allow an embed of preferences - it is managed via secure links - need to insert a "request preference link"  any suggestions (search mailer lite help if needed...)
- [x] remove dates from all posts and pages -- stripped from About/CV/Contact/Resources (was showing arbitrary placeholder dates), kept on News/Events where they're meaningful
- [~] possible to embed individual tracks rather than playlists for soundcloud shares -- interim fix: widened the two cramped IBA set embeds (height 300->500px). Full fix (individual tracks) still needs real track URLs from Tenzin.
- [ ]  ways to harvest emails from users of this sub-site — can funnel them to a new list on MailerLite (same undercarriage as Gaia Forest's subscription form). Open to suggestions. (Note: gaiaforest's own MailerLite form got a look tonight too — Members page was missing its embed, Tenzin handling directly; also discussed adding Country/Postcode fields there, needs the field added in MailerLite's form builder first.)
- [ ] Currently no link between donations collected and my email list... suggestions?  ask people to subscribe when they donate?  any way to automate? any way to back-fix this gap? - donor-box zapier automation??? - to be revisited (shelved for a later session)
- [x] Śamatha Retreat at IBA 2025 (31 July – 6 August, with Christian Bernert) added -- last blocked event, now resolved
- [x] Header socials: YouTube added, Instagram switched to Tenzin's personal account, SoundCloud added
- [x] TCP 2026 morning meditation glossary/summary handout (14pp, EN/ES/ZH + Sanskrit/Tibetan) published at /resources/text/glossary-morning-meditations-tcp-2026/ -- ready to share with IBA
- [x] Rhonda Place "Cool Calm and Re-collected" #1 added (18 Jan 2025, Session 1: Kayanupassana -- embodied awareness)
- [x] Social icons moved to header, footer "Privacy Policy" shortened to "Privacy"
- [x] General links added: Gaia Forest, Plum Village International, Mountain Spring Monastery, International Buddhist Academy
- [x]  Updates to Gaia Forest Privacy policy also?
- [x]  Privacy policy is legacy from WordPress — suggest recycle, or send to the present Gaia Forest page?
- [x] Renamed "Vocabularies" → "Language Study" everywhere (nav, resources landing page, page title, category tags) — frees up "Vocabularies" for the future PDF-handout concept from Tenzin's Obsidian knowledge base
- [x] About page: linkified plain-text mentions of events/resources/audio/video/links/suggested reading/text resources/contact
- [x] Resources page description text added
- [x] Header title spacing adjusted (`layouts/partials/header.html`)
- [x] Donorbox campaign colours adjusted
- [x] CV: Metta/śamatha retreats at IBA Kathmandu (2025 & 2026, co-facilitated with Christian Bernert)
- [x] CV: Online sangha — Deep Eco Dharma group detail + link to Gaia Forest page
- [x] CV: Weekly meditation — Never Never Mind Cafe, Dorrigo, 9am + contact link
- [x] Bio page: fixed repetitive closing paragraphs
- [x] About page: inline profile photo, floated with text wrap
- [x] Resources reorg: split into Audio / Video / Text / Links / Suggested Reading / Vocabularies
- [x] Search bar scoped to just the Resources page (Pagefind, filtered to Section=Resources)
- [x] Suggested Reading: published with links (see below — all 8 books + 2 suttas linked to publisher/official/free sources)

### Past events added

- [x] Walking in Peace, Kadoorie Farm (2-day, Aug 2026) — via Instagram
- [x] Metta Convention: Many Rivers, One Ocean (Nov 2025) — talk on Ekayāna and the Lotus Sūtra
- [x] Deep Ecology workshop, Thora (April 2025) — with John Seed & Karin Raven Steininger
- [x] Rhonda Place "Cool Calm and Re-collected" #2 (Metta Centre)
- [x] Rhonda Place "Cool Calm and Re-collected" #3 (Metta Centre)
- [x] Buddhism and Deep Ecology, HKU (2023)
- [x] Buddhist Yoga at SIBA, with Thomas Dhammadipa (2023)
- [x] Loving Kindness at Yarrawarra, with Thomas Dhammadipa (2023)
- [x] Kadoorie Farm: Zen and the Ecology of the Unconscious (2025)
- [x] Walking in Peace, Kadoorie Farm (1-day, 2025)

### Other resources added

- [x] Video: Chanting Dhāraṇī of Avalokiteśvara, with Thomas Dhammadipa, Pure Land Assembly HK
- [x] Video: Chanting Heart Sutra, with Thomas Dhammadipa, Pure Land Assembly HK
- [x] Video: Online talk on loving kindness, Metta Centre
- [x] Audio: Loving kindness guided meditation
- [x] Audio: Our Life as Gaia
- [x] Audio (series): Spanish translation, IBA 2025 meditation class
- [x] Audio (series): English meditations, IBA 2025
- [x] Audio: Song of the Rainforest

### Suggested Reading — published at /resources/suggested-reading/

- [x] Mindfulness of Breathing — [Ānāpānasati Sutta](https://suttacentral.net/mn118/en/sujato?lang=en&layout=linebyline&reference=main%2Cpts&notes=none&highlight=false&script=latin), *Breathe, You Are Alive* (Parallax Press), *Mindfulness of Breathing* — Pa Auk Sayadaw (free PDF)
- [x] Four Foundations of Mindfulness — [Satipaṭṭhāna Sutta](https://suttacentral.net/mn10/en/sujato?lang=en&layout=linebyline&reference=main%2Cpts&notes=none&highlight=false&script=latin), *Transformation and Healing* (Parallax Press), *Knowing and Seeing* — Pa Auk Sayadaw (free PDF)
- [x] Śamatha-Vipaśyanā — *The Attention Revolution* (Wisdom Publications), *The Mind Illuminated* (culadasa.com)
- [x] Yogācāra — *Understanding Our Mind* (Parallax Press)
- [x] Loving Kindness and the Four Brahmavihāras — *The Four Immeasurables* (Shambhala/Snow Lion)
- [x] Eco-Dharma — *The Diamond That Cuts Through Illusion*, *Zen and the Art of Saving the Planet* (both Parallax Press)
