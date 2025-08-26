// Fonts
#let font_head_face = "Alegreya Sans"
#let font_head_size = 24pt
#let font_text_face = "Libre Baskerville"
// #let font_text_face = "Literata"
#let font_text_size = 10.5pt
#let font_mono_face = "Fira Code"
#let font_mono_size = 10pt
#let font_math_face = "STIX Two Math"
// #let font_math_face = "Fira Math"
// #let font_math_face = "Noto Sans Math"
#let font_math_size = 10pt

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
    box(
      [
        #text(kind, font: font_head_face, weight: "bold")

        #content
      ],
      width: 100%,
      inset: 10pt,
      stroke: (
        top: .5pt,
        bottom: .5pt,
      ),
    )
  } else {
    block(
      breakable: false,
      [
        #box(
          width: 100%,
          inset: 3pt,
          stroke: (
            top: 2.5pt,
            left: 0.5pt,
            bottom: none,
            right: 0.5pt,
          ),
        )
        #v(-1em)
        #block(
          [
            #text("Start of " + kind, font: font_head_face, weight: "bold")

            #content

            #text("End of " + kind, font: font_head_face, weight: "bold")
          ],
          width: 100%,
          inset: (left: 10pt),
        )
        #v(-1em)
        #box(
          width: 100%,
          inset: 3pt,
          stroke: (
            top: none,
            left: 0.5pt,
            bottom: 2.5pt,
            right: 0.5pt,
          ),
        )
      ]
    )
  }
}

#let conf(
  title: none,
  subtitle: none,
  doctype: none,
  status: none,
  version: none,
  date: none,
  year: none,
  doc,
) = context {
  //
  // Font settings
  //
  // Normal text
  set text(
    font: font_text_face,
    size: font_text_size,
  )
  // Math
  show math.equation: set text(
    font: font_math_face,
    size: font_math_size,
  )
  // Code
  show raw: set text(
    font: font_mono_face,
    size: font_mono_size,
  )
  // Headings
  set heading(numbering: "1.1")
  show heading: it => block()[
    #let size = font_head_size - it.level * 3pt
    #if size < 10pt { size = 10pt }
    #set align(center)
    #set text(
      font: font_head_face,
      size: size,
      weight: "bold",
    )
    #it
  ]

  // Outline Table of Content/Figures/Tables/etc.
  show outline.entry.where(level: 1): set block(above: 1.2em)
  show outline.entry.where(level: 1): set text(size: 1.2em, font: font_head_face, weight: "bold")
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

  image("tcg.png", width: 30%)

  set align(left + bottom)

  text(48pt, title, font: font_head_face, weight: "extrabold")
  v(-30pt)

  if (subtitle != none) {
    text(32pt, subtitle, font: font_head_face, weight: "medium")
    v(-20pt)
  }

  line(length: 100%, stroke: 2pt)
  v(-20pt)

  text(32pt, doctype, font: font_head_face, weight: "light")
  v(-16pt)

  text(24pt, status, font: font_head_face, weight: "extralight")
  v(-12pt)

  line(length: 100%, stroke: 2pt)

  v(-2pt)
  text(20pt, version, font: font_head_face, weight: "light")
  v(-6pt)
  text(16pt, date, font: font_head_face, weight: "light")
  v(-4pt)
  // text(12pt, "Contact: " + link("mailto:admin@trustedcomputinggroup.org"), font: font_head_face, weight: "extralight")
  text(12pt, "Contact: " + link("mailto:admin@trustedcomputinggroup.org"), font: font_head_face, weight: "light")

  //
  // Front matter
  //
  let foot = (
    line(length: 100%, stroke: 0.5pt)
      + grid(
        align: (left, center, right),
        columns: (1in, 5.5in, 1in),
        rows: 0.5in,
        text(sym.copyright + " " + year + " TCG", font: font_head_face, weight: "light"),
        text(title + if subtitle != none { [ -- ] + subtitle }, font: font_head_face, weight: "light"),
        text(
          context counter(page).display(
            "1",
            both: false,
          ),
          font: font_head_face,
          weight: "light",
        ),
      )
  )
  set text(font: font_head_face, weight: "light")
  set page(
    paper: "us-letter",
    margin: (bottom: 1in, rest: 0.5in),
    footer: foot,
  )

  set align(left + top)

  set text(font: font_text_face, size: font_text_size)

  doc
}
