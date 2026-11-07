# Croatian Working Law Fact Checker

A multilingual search tool for the Croatian labor law (Zakon o radu). Search articles in Croatian, English, or Spanish and read verified excerpts with relevance scoring and article references.

Live: https://tyhrr.github.io/fact-checker

## Features

- Search across Croatian labor law articles in 3 languages (hr/en/es).
- Fuzzy suggestions powered by Fuse.js.
- Verified badge on each result (checked against the official source).
- Tooltips on article numbers (Tippy.js).
- Light/dark theme, responsive layout.
- Flat modern UI (replaced the old neomorphic style).

## Run locally

```bash
git clone https://github.com/tyhrr/fact-checker.git
cd fact-checker
# open index.html in your browser
```

## Project layout

```
fact-checker/
├── index.html
├── assets/
│   ├── css/        # main.css, responsive.css, flat.css
│   ├── js/         # search, database, relevance scoring, theme toggle
│   └── data/       # law articles (JSON)
├── tests/
└── scripts/
```

## Notes

- Data sourced from the official Croatian labor law (zakon.hr).
- For informational purposes only; not legal advice.
- Plugins loaded via CDN: Fuse.js, Tippy.js, Marked.

---

Built by Alan Salva. Feedback welcome.