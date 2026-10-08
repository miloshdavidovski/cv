// Shared theme (colors, page/text setup) and reusable layout components.
// main.typ imports this to compose the page layout; the content files in
// content/ only hold data and never need to touch styling.

#let accent = rgb("#2f6fbe")
#let accent-light = rgb("#eef3fa")
#let dark = rgb("#3a3a3c")
#let muted = rgb("#6b6b6b")

// Applied in main.typ via `#show: cv-style.with(...)`.
#let cv-style(title: "", author: "", lang: "en", body) = {
  set document(title: title, author: author)
  set page(paper: "a4", margin: (x: 1.7cm, y: 1.6cm))
  set text(font: "Liberation Sans", size: 9.3pt, fill: rgb("#222222"), lang: lang)
  set par(justify: false, leading: 0.58em, spacing: 0.8em)
  set list(marker: text(fill: accent)[•], indent: 2pt, body-indent: 6pt)
  show link: set text(fill: accent)
  body
}

#let heading2(title) = block(above: 15pt, below: 9pt, sticky: true, stack(
  spacing: 5pt,
  text(weight: "bold", size: 12.5pt)[#title],
  box(width: 26pt, height: 2.4pt, fill: accent),
))

#let pill(txt) = box(fill: accent, radius: 2pt, inset: (x: 7pt, y: 3.5pt))[
  #text(fill: white, size: 7.6pt, weight: "bold")[#txt]
]

// Light skill tag — the sidebar uses these in groups instead of skill bars.
#let tag(txt) = box(fill: accent-light, stroke: 0.5pt + accent.lighten(55%), radius: 2pt, inset: (x: 4.5pt, y: 3pt), outset: (y: 0pt))[
  #text(fill: accent.darken(25%), size: 7.6pt)[#txt]
]

#let tag-group(title, items) = block(above: 0pt, below: 9pt, breakable: false)[
  #text(weight: "bold", size: 8.4pt)[#title]
  #v(1pt)
  #par(leading: 0.45em)[#items.map(tag).join(h(3pt, weak: true) + " ")]
]

#let contact-item(body) = block(above: 0pt, below: 7pt)[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, text(fill: accent)[▸], body)
]

#let job(title, place, date, body) = block(above: 11pt, below: 13pt, breakable: true)[
  #grid(
    columns: (1fr, auto),
    column-gutter: 8pt,
    align(horizon)[#text(weight: "bold", size: 10pt)[#title]],
    align(horizon + right)[#pill(date)],
  )
  #text(fill: accent, weight: "bold")[#place]
  #v(5pt)
  #body
]

// Shorter entry for earlier positions: one summary line plus technologies.
#let job-compact(title, place, date, summary, tech) = block(above: 13pt, below: 13pt, breakable: false)[
  #grid(
    columns: (1fr, auto),
    column-gutter: 8pt,
    align(horizon)[#text(weight: "bold", size: 9.5pt)[#title]],
    align(horizon + right)[#text(fill: accent, weight: "bold", size: 8.2pt)[#date]],
  )
  #text(fill: accent, weight: "bold", size: 8.8pt)[#place]
  #v(3pt)
  #summary
  #v(2pt)
  #text(fill: muted, size: 8.2pt)[#tech]
]

#let edu(title, place, date: none, body: none) = block(above: 0pt, below: 10pt, breakable: false)[
  #if date != none [#text(fill: accent, weight: "bold", size: 8.5pt)[#date] \ ]
  #text(weight: "bold", size: 9.3pt)[#title] \
  #text(fill: accent, size: 8.7pt)[#place]
  #if body != none [#v(3pt) #body]
]

#let tech(label, body) = block(above: 7pt)[#text(size: 8.6pt)[*#label:* #body]]

// Body geometry — kept in sync with the page margins set in `cv-style`.
#let page-margin-x = 1.7cm
#let page-margin-y = 1.6cm
#let body-gutter = 26pt
#let body-width = 21cm - 2 * page-margin-x
#let left-col-width = (body-width - body-gutter) / 3

// One-third / two-thirds columns. Each column breaks onto the next page
// independently, so the sidebar and the main column flow on their own.
#let two-col(left, right) = grid(columns: (left-col-width, 1fr), column-gutter: body-gutter, left, right)

// Thin vertical rule centred in the gutter between the two body columns.
#let divider-background = place(
  top + left,
  dx: page-margin-x + left-col-width + body-gutter / 2,
  dy: page-margin-y,
  line(angle: 90deg, length: 100% - 2 * page-margin-y, stroke: 0.4pt + rgb("#d5d5d5")),
)
