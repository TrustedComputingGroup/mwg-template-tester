/* -------------------------------------------------------------------------- */
/* TCG Typst Template                                                         */
/* Version: 0.2.7                                                             */
/* Filename: 'tcg-typst-template-v0.2.7-alpha.tpl.typ'                        */
/* Authors:                                                                   */
/*   * John Doe (john.doe@example.com)                                        */
/*   * Jane Doe (jane.doe@acme.org)                                           */
/*                                                                            */
/* Copyright © 2025 Trusted Computing Group                                   */
/* -------------------------------------------------------------------------- */


/* --- fonts ---------------------------------------------------------------- */

#let font-head-face = "Signika"
// #let font-head-face = "Alegreya Sans"
#let font-head-size = 24pt
#let font-text-face = "Yrsa"
// #let font-text-face = "Libre Baskerville"
// #let font-text-face = "Literata"
#let font-text-size = 11.5pt
#let font-mono-face = "Fira Code"
#let font-mono-size = 10pt
#let font-math-face = "STIX Two Math"
// #let font-math-face = "Fira Math"
// #let font-math-face = "Noto Sans Math"
#let font-math-size = 10pt



/* --- colors --------------------------------------------------------------- */

/* TCG primary colors */
#let tcg-color-shade = rgb("#efefefff")

/* element colors */
#let color-code-fg = rgb("#000000ff")
#let color-code-bg = rgb("#f9f9f9ff")
#let color-table-row-odd = rgb("#ffffff00")
#let color-table-row-even = tcg-color-shade



/* --- definitions ---------------------------------------------------------- */

#let table-toprule = table.hline(stroke: 0.08em)
#let table-bottomrule = table-toprule
#let table-midrule = table.hline(stroke: 0.05em)

#let table-header-text(body) = text(body, weight: "semibold", font: font-head-face)

/* --- functions ------------------------------------------------------------ */

/* appendix */
#let appendix(body) = {
  set heading(numbering: "A.1", supplement: [Anhang])
  counter(heading).update(0)
  body
}

// Informative box
#let informative(
  content,
  kind: none,
) = context {
  let kind = if kind != none { kind } else { "Informative Text" }
  let post = none

  let meas = measure(content)
  v(2pt)

  if meas.height < 2in {
    block(
      breakable: false,
      [
        #box(
          width: 100%,
          inset: 2.5pt,
          stroke: (
            top: 2.5pt,
            left: 0.5pt,
            bottom: none,
            right: 0.5pt,
          ),
        )
        #block(
          [
            #v(-1em)
            #text([\u{1f6c8} ~ ] + kind, font: font-head-face, weight: "bold")

            #content
          ],
          width: 100%,
          inset: (left: 10pt),
        )

        #v(-0.6em)
        #box(
          width: 100%,
          inset: 2.5pt,
          stroke: (
            top: none,
            left: 0.5pt,
            bottom: 2.5pt,
            right: 0.5pt,
          ),
        )
      ],
    )
    // box(
    //   [
    //     #text(kind, font: font-head-face, weight: "bold")

    //     #content
    //   ],
    //   width: 100%,
    //   inset: 10pt,
    //   stroke: (
    //     top: .5pt,
    //     bottom: .5pt,
    //   ),
    // )
  } else {
    block(
      breakable: false,
      [
        #box(
          width: 100%,
          inset: 2.5pt,
          stroke: (
            top: 2.5pt,
            left: 0.5pt,
            bottom: none,
            right: 0.5pt,
          ),
        )
        #block(
          [
            #v(-1em)
            #text([\u{1f6c8} ~ Start of ] + kind, font: font-head-face, weight: "bold")
          ],
          width: 100%,
          inset: (left: 10pt),
        )
      ],
    )
    block(
      [
        #content
      ],
      width: 100%,
      inset: (left: 10pt),
    )
    block(
      breakable: false,
      [
        #block(
          [
            #text([\u{1f6c8} ~ End of ] + kind, font: font-head-face, weight: "bold")
            #v(-0.8em)
          ],
          width: 100%,
          inset: (left: 10pt),
        )
        #box(
          width: 100%,
          inset: 2.5pt,
          stroke: (
            top: none,
            left: 0.5pt,
            bottom: 2.5pt,
            right: 0.5pt,
          ),
        )
      ],
    )
  }
}

#let conf(
  title: "The Coolest and Most Awesome TCG Document Ever Made",
  subtitle: "A TCG Specification",
  doctype: "Specification", // must be one of "Specification", "Reference", "Guidance"
  status: "Draft", // must be one of "Draft", "Published"
  version: "Version 184, Revision 0.37",
  date: "April 15, 2003",
  year: none,
  doc,
) = context {
  //
  // Font settings
  //
  // Normal text
  set text(
    font: font-text-face,
    size: font-text-size,
  )
  // Math
  show math.equation: set text(
    font: font-math-face,
    size: font-math-size,
  )
  // Code
  show raw: set text(
    font: font-mono-face,
    size: font-mono-size,
  )
  // Headings
  set heading(numbering: "1.1")
  show heading: it => block()[
    #let size = font-head-size - it.level * 3pt
    #if size < 10pt { size = 10pt }
    #set align(center)
    #set text(
      font: font-head-face,
      size: size,
      weight: "bold",
    )
    #it
  ]

  // Outline Table of Content/Figures/Tables/etc.
  show outline.entry.where(level: 1): set block(above: 1.2em)
  show outline.entry.where(level: 1): set text(size: 1.2em, font: font-head-face, weight: "bold")
  show outline.entry.where(level: 1): it => {
    show repeat: none
    it
  }
  // show outline.entry: it => link(
  //   it.element.location(),
  //   it.indented(it.prefix(), it.inner()),
  // )


  let horizontalrule = line(start: (25%, 0%), end: (75%, 0%))

  show terms: it => {
    it
      .children
      .map(child => [
        #strong[#child.term]
        #block(inset: (left: 1.5em, top: -0.4em))[#child.description]
      ])
      .join()
  }

  set table(
    inset: 6pt,
    stroke: 1pt,
  )

  show figure.where(kind: table): set figure.caption(position: bottom)

  show figure.where(kind: image): set figure.caption(position: bottom)

  //
  // Title page
  //
  set page(paper: "us-letter", margin: 1in)
  set align(left + top)
  // TCG logo
  place(
    top + left,
    link(
      "https://trustedcomputinggroup.org/",
      image("img/tcg-logo.svg", width: 30%, alt: "TCG Logo"),
    ),
  )
  // Document type
  place(
    top + right,
    box(
      width: auto,
      fill: black,
      inset: 6pt,
      radius: 4pt,
      stroke: 0.5pt,
      [
        #text(
          upper(doctype),
          font: font-head-face,
          weight: "bold",
          // weight: "extrabold",
          size: 32pt,
          // size: font-head-size * 1.3,
          fill: white,
        )
      ],
    ),
  )


  // HERE THE "SPECIFICATION" text (upper case always)

  set align(left + bottom)

  text(48pt, title, font: font-head-face, weight: "extrabold")
  v(-30pt)

  if (subtitle != none) {
    text(32pt, subtitle, font: font-head-face, weight: "medium")
    v(-20pt)
  }

  line(length: 100%, stroke: 2pt)
  v(-20pt)

  text(32pt, doctype, font: font-head-face, weight: "light")
  v(-16pt)

  text(24pt, status, font: font-head-face, weight: "extralight")
  v(-12pt)

  line(length: 100%, stroke: 2pt)

  v(-2pt)
  text(20pt, version, font: font-head-face, weight: "light")
  v(-6pt)
  text(16pt, date, font: font-head-face, weight: "light")
  v(-4pt)
  // text(12pt, "Contact: " + link("mailto:admin@trustedcomputinggroup.org"), font: font-head-face, weight: "extralight")
  text(12pt, "Contact: " + link("mailto:admin@trustedcomputinggroup.org"), font: font-head-face, weight: "light")

  //
  // Front matter
  //
  let foot = (
    line(length: 100%, stroke: 0.5pt)
      + grid(
        align: (left, center, right),
        columns: (1in, 5.5in, 1in),
        rows: 0.5in,
        text(sym.copyright + " " + year + " TCG", font: font-head-face, weight: "light"),
        text(title + if subtitle != none { [ -- ] + subtitle }, font: font-head-face, weight: "light"),
        text(
          context counter(page).display(
            "1",
            both: false,
          ),
          font: font-head-face,
          weight: "light",
        ),
      )
  )
  set text(font: font-head-face, weight: "light")
  set page(
    paper: "us-letter",
    margin: (bottom: 1in, rest: 0.5in),
    footer: foot,
  )

  set align(left + top)

  set text(font: font-text-face, size: font-text-size)

  doc
}
