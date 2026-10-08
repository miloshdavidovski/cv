# CLAUDE.md — Milosh's CV

Typst CV in English and German, built by GitHub Actions and published to GitHub Pages.
Public link for recruiters: https://miloshdavidovski.github.io/cv/ (landing page → EN/DE PDFs).

## Where things are

| Change | File |
|---|---|
| Any CV text (jobs, profile, skills, education, certs, languages, contact) | `content/en.typ` **and** `content/de.typ` |
| Page layout / section order | `main.typ` |
| Colors, fonts, spacing, components (`job`, `job-compact`, `tag-group`, `edu`, `tech`) | `style.typ` |
| Landing page | `site/index.html` (contact details are duplicated here — keep in sync) |
| Photo | `assets/photo.jpg` (cropped head-and-shoulders, 600px wide, no EXIF) |

`content/en.typ` and `content/de.typ` must keep **identical structure** (same variable names and the same
number/order of entries), because `main.typ` reads the same fields from whichever language is built.
Every content change goes into both files.

Jobs: `jobs` = full entries (description + bullets + `#tech(...)` line); `earlier` = compact entries
(one-line summary + tech). Newest first.

## Build, check, publish

```sh
./build.sh                       # → out/Milosh_Davidovski_CV_EN.pdf, _DE.pdf, index.html, photo.jpg
pdfinfo out/Milosh_Davidovski_CV_EN.pdf | grep Pages
pdftoppm -r 60 -png out/Milosh_Davidovski_CV_EN.pdf <scratchpad>/en   # render pages to review visually
```

- Typst 0.15.1 (`brew install typst`); CI is pinned to the same version. Fonts come from `fonts/` with
  `--ignore-system-fonts`, so local output matches CI.
- QR code is generated at build time (`@preview/tiaoma`) and points to the landing page.
- Publishing = commit + push to `main`. `.github/workflows/build-pdf.yml` builds and deploys to Pages in ~1 min.
  Check the run: `curl -s https://api.github.com/repos/miloshdavidovski/cv/actions/runs` (no `gh` CLI installed).
  Verify live: download the PDF from the Pages URL and `pdftotext` it.
- Push works over SSH (`origin` = `git@github.com:miloshdavidovski/cv.git`). Commit as
  `Milosh Davidovski <milos.davidovski@gmail.com>`.

## Rules and decisions (agreed with Milosh)

- **No phone number in the repo or the public PDFs.** It's only added for private builds via the
  gitignored `.phone` file (`build.sh` passes it as `--input phone=...`). Grep for it before committing.
- Contact shown publicly: email, LinkedIn, Vienna.
- **Wording:** Milosh prefers his own wording from his original CVs. Use it as the source; only rephrase
  where a bullet repeats almost verbatim across jobs (e.g. Istio mTLS / traffic management, GitHub Actions
  CI/CD) — keep the most recent job (twinformatics) word-for-word and vary the older ones.
- German text comes from his German CV, not translated from English.
- SECO and PRODYNA stay as **separate** entries (PRODYNA was the employer, SECO the client — he wants it simple).
- Skills are shown as grouped tags (not progress bars).
- Current length: 4 pages per language; page 4 holds only the 2016–2018 compact entries.
- Landing page has `noindex` (not findable via search engines) — intentional unless he says otherwise.

## Source material (not in the repo)

Original CVs (Word + PDF, EN + DE, contain the phone number) and the original photo are in
`~/Documents/CV-originals/`. Use `pdftotext -layout` on the PDFs to get his original wording.

## Git history note

The layout was based on `github.com/c-linse/cv` (Christoph Linse's CV). His history is kept locally
only, as branch `upstream-main` / remote `upstream`. Never push that branch to `origin`.
