# Croatian Working Law Fact Checker

I made this site to make it easier to look up Croatian labor law. You can search the articles in Croatian, English, or Spanish, and switch between light and dark themes.

The translations are here to help with reading, but they may not capture every legal detail. Check the Croatian text and current law before relying on anything here. This site isn't legal advice.

## Run it locally

You’ll need Node.js 16 or newer and npm.

```bash
git clone https://github.com/tyhrr/fact-cheker-3.git
cd fact-cheker-3
npm install
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) if it doesn’t open automatically.

## Tests and other commands

```bash
npm test                 # Run the Jest tests
npm run lint             # Check the JavaScript
npm run validate         # Validate the data files
node test-multilingual.js # Run the multilingual checks
```

`npm run build` runs the PDF extraction, data generation, translation, and validation scripts. You can also use `npm run serve` to serve the site on port 8080.

## What’s in the repo

- `index.html` — the app
- `assets/js/` — search, data loading, language detection, and theme code
- `assets/data/` — Croatian law data and the multilingual data file
- `assets/css/` — styles
- `scripts/` — scripts for extracting and preparing the data
- `tests/` — automated tests

For GitHub Pages setup, see [GITHUB-PAGES-SETUP.md](GITHUB-PAGES-SETUP.md).
