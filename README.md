# CV — Milosh Davidovski

My CV in English and German, written in [Typst](https://typst.app) and published automatically to GitHub Pages.

**Link for recruiters:** https://miloshdavidovski.github.io/cv/

Direct PDFs:
- English: https://miloshdavidovski.github.io/cv/Milosh_Davidovski_CV_EN.pdf
- German: https://miloshdavidovski.github.io/cv/Milosh_Davidovski_CV_DE.pdf

## Layout

- `content/en.typ`, `content/de.typ` — all CV text, one file per language with identical structure. **Edit these to update the CV.**
- `main.typ` — page composition only: sidebar (photo, contact, skills, languages, education, certifications, QR code) and main column (profile, experience). Picks the language from `--input lang=en|de`.
- `style.typ` — shared theme (colors, fonts, page setup) and components (`job`, `job-compact`, `tag-group`, `edu`, ...).
- `site/index.html` — the landing page linking both PDFs.
- `assets/photo.jpg` — profile photo. The QR code is generated at build time and points at the landing page.
- `fonts/` — Liberation Sans (SIL OFL), so local and CI builds render identically.

## Build locally

Requires the [Typst CLI](https://github.com/typst/typst) (`brew install typst`).

```sh
./build.sh
```

This writes both PDFs plus the landing page to `out/`.

To include your phone number in a private build (e.g. for a direct application), put it in a `.phone` file. The file is gitignored, so the number never reaches GitHub or the public PDFs:

```sh
echo "+43 ..." > .phone
./build.sh
```

## Publishing

[`.github/workflows/build-pdf.yml`](.github/workflows/build-pdf.yml) runs `build.sh` on every push to `main` and deploys `out/` to GitHub Pages. Pull requests only build. The PDFs can also be downloaded from each run as the `cv-pdfs` artifact.

One-time setup: **Settings → Pages → Build and deployment → Source: GitHub Actions**.

Layout originally based on [c-linse/cv](https://github.com/c-linse/cv).
