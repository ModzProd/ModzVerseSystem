# ModzVerse Wiki

> A World at War! · The comprehensive fan wiki and intranet for the ModzVerse pro wrestling world.

A fully offline, single-file HTML knowledge system for the **ModzVerse** custom world database for [Pro Wrestling Sim](https://store.steampowered.com/app/1157700/Pro_Wrestling_Sim/). All content is embedded — no internet connection, no CDN, no web fonts, no JavaScript libraries. Just open the file in any browser.

---

## 📦 What's in this repo

| File | Purpose |
|---|---|
| `index.html` | The complete intranet — 362 KB, 5,127 lines, 15 sections, single self-contained file |

That's it. One file. Copy it, email it, put it on a USB stick, host it on any web server — it works everywhere with zero setup.

---

## 🌍 What's inside the intranet

The intranet documents the ModzVerse pro wrestling world in **15 sections + 6 promotion profile articles**:

### Intranet Portal (new in v0.9.1)
- **Portal Dashboard** — landing page with KPI strip, 6 promotion quick-access cards, news feed + live system status board
- **News & Updates** — chronological feed of canon-dated world events and build notes
- **Site Map & A–Z Index** — 7-category site map + 40+ alphabetical entries
- **About / Print** — system info + built-in print stylesheet

### World Reference
- **World Overview** — power-center breakdown, all-6-promotions quick-reference, style comparison
- **World Lore: "A World at War!"** — 4 documented conflicts (Lucha Civil War, Japanese Division Wars, Chicago Anomaly, Continental Vacuum) with rivalry matrix

### Promotions (6 profile articles)
Full infobox, history, style analysis, intended roster, events, and strategic position for each:
1. **Chicago Show** — USA · Sports Entertainment · founded 1950 · $50,000 cash
2. **Lucha Bellas** — Mexico · Lucha Libre · women-exclusive · founded 1980
3. **Lucha MEX** — Mexico · Traditional · mixed-gender · founded 1980
4. **RAIBARAZU** — Japan · Pure Wrestling · 2 brands · 3 supershows · founded 1950
5. **Osaka Joshi** — Japan · Kings Road · women-exclusive · founded 2003 · only promotion with prestige
6. **Valkyrie Project** — Japan · Kings Road · founded 1980 · keeper of the AEGIS LEAGUE championship

### Events & Calendar
- **13 signature events** — 1 weekly + 9 annual + 3 tours, with monthly calendar grid
- The January Week 5 bottleneck (3 supershows competing on the same weekend)
- The RAIBARAZU tour system explained (3 tours × ~12 stops each)

### Titles & Brands
- **AEGIS LEAGUE championship** — the only title in the ModzVerse · currently vacant
- **Doragon** (RAIBARAZU A-brand, Dragon) and **Fenikkusu** (B-brand, Phoenix)

### Catalogs
- **17 gimmicks** — full disposition color-coding (Face/Heel/Neutral) + modifier reference
- **Geography** — 6 continents, 5 country spotlights (Japan, USA, Mexico, Brazil, Canada), 7-style preference matrix

### Venue Database Packs (new in v0.9.2 / v0.9.3)
Documentation for all **18 venue packs** totaling **36,000 venue records**:
- 6 regional packs (North America, South America, Africa, Asia, Europe, Oceania) — 12,000 venues
- 5 capacity-tier packs (Arena, Large, Medium, Small, Tiny) — 12,000 venues
- 7 style-specific packs (one per canonical wrestling style) — 11,800 venues

**Key finding: "The Australia Surprise"** — Australia is the leading market for 4 of the 7 wrestling styles (Hardcore, Kings Road, Pure Wrestling, Strong Style) despite having zero home promotions in the launch roster.

### System & Status
- **BETA Status & Roadmap** — what's done, what's still missing, 6-phase roadmap to v1.0
- Known issues, schema version notes (v121 main / v103 venue packs)

---

## ✨ Key features

- **🔒 Fully offline** — 0 external URLs, 0 CDN calls, 0 web fonts, 0 JS libraries
- **🔍 Full-text search** — live DOM scan with highlighted snippets and section-level deduplication
- **⌨️ Keyboard navigation** — `j`/`↓` next section, `k`/`↑` previous, `/` to focus search
- **🖨️ Print stylesheet** — built-in print/PDF export with section-level page breaks
- **📱 Responsive** — sidebar collapses under 1100px, infoboxes reflow under 640px
- **♿ Accessible** — ARIA labels, focus-visible outlines, `prefers-reduced-motion` respected
- **🎨 Promotion-colored accents** — every promotion gets its own color identity (CS red, LB pink, LM green/gold, RB crimson/gold, OJ pink/teal, VP silver/blue/gold)

---

## 🚀 How to use

### Read the wiki
1. Download `index.html`
2. Open it in any modern browser (Chrome 90+, Firefox 88+, Safari 14+, Edge 90+)
3. That's it. No server, no installation, no internet required.

### Search
- Click the search box at the top-right (or press `/`)
- Type any term — results appear live with snippets and section context
- Press `Esc` or click outside to close

### Print / Export as PDF
- Press `Ctrl+P` (Windows/Linux) or `Cmd+P` (macOS) anywhere
- Or click the "🖨 Print / Export PDF" button on the Portal Dashboard
- Choose "Save as PDF" as the destination

### Navigate
- Top nav bar: jump between major sections
- Left sidebar: grouped TOC with scroll-spy active highlighting
- `j` / `k` / arrow keys: move between sections

---

## 📊 Project stats

| Metric | Value |
|---|---|
| File size | 362 KB (single HTML file) |
| Lines of code | 5,127 |
| Sections | 15 |
| Promotion profiles | 6 |
| Total venue records documented | 36,000 across 18 packs |
| Total word count | ~30,000 |
| External dependencies | 0 |
| JavaScript libraries | 0 (vanilla, ~80 lines) |
| Web fonts | 0 (universal system stack) |
| Browser support | Any modern browser (Chrome 90+, Firefox 88+, Safari 14+, Edge 90+) |

---

## 🎮 About ModzVerse

ModzVerse is a custom world database for **Pro Wrestling Sim** — a single-player booking/management simulation game where the player runs a pro wrestling promotion. The world features:

- **6 promotions** across 3 continents (Japan, Mexico, USA)
- **13 signature events** including the January Week 5 supershow bottleneck
- **1 championship** (the AEGIS LEAGUE, currently vacant)
- **2 brands** (RAIBARAZU's Doragon and Fenikkusu)
- **17 canonical gimmicks** with mechanical modifiers
- **190 countries and 3,218 regions** with full wrestling popularity data
- **18 venue database packs** totaling 36,000 venues

The world is currently in **BETA** — the structural foundation (promotions, events, titles, brands, gimmicks, geography, venues) is complete, but the human layer (workers, contracts, networks, storylines) has not yet been populated.

---

## 🔧 Build history

| Version | Date | Highlights |
|---|---|---|
| v0.9.0 | 2025-01-01 | Initial wikia build — 9 sections, 6 promotion profiles, ~232 KB |
| v0.9.1 | 2025-01-01 | Intranet portal, news feed, sitemap, A-Z index, full-text search, offline badge, print stylesheet |
| v0.9.2 | 2025-01-01 | Venue Packs section added — 10 packs, 16,859 venues |
| v0.9.3 | 2025-01-01 | 8 new venue packs added — total 18 packs, 36,000 venues; "Australia Surprise" expanded to 4 styles |

---

## 🤝 Contributing

The ModzVerse is a community world — contributions are welcome. The most valuable contributions, in priority order:

1. **Worker rosters** — fully-spec'd worker entries (149 columns each) for any of the 6 promotions
2. **Venue data** — real-world venue entries for Chicago, Mexico City, Tokyo, Osaka, Saga
3. **Match gimmicks and stories** — match type definitions and play-by-play text beats
4. **Angle templates** — pre-built angle scenes that fit the world's in-universe tone
5. **Promotion-specific logo and title art** — replacing placeholder `logos.png` and `titles.png`

---

## ⚠️ Disclaimer

This wiki is a fan reference for the ModzVerse custom world database for Pro Wrestling Sim. All in-universe content is fictional. Pro Wrestling Sim is a trademark of its respective owners. This project is not affiliated with or endorsed by the developers of Pro Wrestling Sim.

---

## 📄 License

No license is included with this repository. By default, this means the code is "all rights reserved" — you may view and fork the repository, but you do not have permission to copy, modify, or distribute the code without explicit permission from the repository owner. If you would like to use any of this content, please open an issue to discuss licensing.
