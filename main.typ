// CV — page composition only. All text lives in content/en.typ and
// content/de.typ; shared theme and components live in style.typ.
//
// Build inputs (passed with `--input key=value`):
//   lang   "en" (default) or "de"
//   phone  optional phone number; only set by local builds, never in CI

#import "@preview/tiaoma:0.3.0": qrcode
#import "style.typ": *
#import "content/en.typ" as en
#import "content/de.typ" as de

#let lang = sys.inputs.at("lang", default: "en")
#let c = if lang == "de" { de } else { en }
#let phone = sys.inputs.at("phone", default: none)

#let site-url = "https://miloshdavidovski.github.io/cv/"

#show: cv-style.with(title: c.name + " — " + c.labels.doc-title, author: c.name, lang: lang)
#set page(background: divider-background)

#two-col(
  [
    #image("assets/photo.jpg", width: 100%)
    #v(6pt)

    #heading2(c.labels.contact)
    #contact-item[#link("mailto:" + c.email)[#c.email]]
    #if phone != none { contact-item[#phone] }
    #contact-item[#link(c.linkedin)[LinkedIn]]
    #contact-item[#c.location]

    #heading2(c.labels.skills)
    #for (group, items) in c.skills { tag-group(group, items) }

    #heading2(c.labels.languages)
    #for (language, level) in c.languages [
      #block(above: 0pt, below: 7pt)[*#language* \ #text(fill: muted, size: 8.6pt)[#level]]
    ]

    #heading2(c.labels.education)
    #for e in c.education { edu(e.title, e.place) }

    #heading2(c.labels.certifications)
    #for (name, issuer) in c.certifications [
      #block(above: 0pt, below: 7pt)[*#name* \ #text(fill: muted, size: 8.6pt)[#issuer]]
    ]

    #v(14pt)
    #block(breakable: false, width: 100%)[
      #align(center)[
        #link(site-url)[#qrcode(site-url, width: 55%)]
        #v(2pt)
        #text(fill: muted, size: 7.6pt)[#c.labels.qr-caption]
      ]
    ]
  ],
  [
    #block(fill: dark, width: 100%, inset: (x: 16pt, y: 14pt), radius: 2pt)[
      #stack(
        spacing: 8pt,
        text(fill: white, weight: "bold", size: 21pt)[#upper(c.name)],
        box(width: 34pt, height: 2pt, fill: accent),
        text(fill: rgb("#d8d8d8"), size: 11pt)[#c.headline],
      )
    ]

    #heading2(c.labels.profile)
    #c.profile

    #heading2(c.labels.experience)
    #for j in c.jobs { job(j.title, j.place, j.date, j.body) }

    #heading2(c.labels.earlier)
    #for j in c.earlier { job-compact(j.title, j.place, j.date, j.summary, j.tech) }
  ],
)
