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
        #text(kind, font: "Inter", weight: "bold")

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
    line(length: 100%, stroke: .5pt)

    block(
      [
        #text("Start of " + kind, font: "Inter", weight: "bold")

        #content

        #text("End of " + kind, font: "Inter", weight: "bold")
      ],
      width: 100%,
      inset: (left: 10pt),
    )

    line(length: 100%, stroke: .5pt)
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
    font: "Manuale",
    size: 10pt,
  )
  // Math
  show math.equation: set text(
    font: "Fira Math",
    size: 10pt,
  )
  // Code
  show raw: set text(
    font: "Fira Code",
    size: 10pt,
  )
  // Headings
  set heading(numbering: "1.1")
  show heading: it => block()[
    #let size = 20pt - it.level * 3pt
    #if size < 10pt { size = 10pt }
    #set align(center)
    #set text(
      font: "Inter",
      size: size,
      weight: "bold",
    )
    #it
  ]

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

  text(48pt, title, font: "Inter", weight: "extrabold")
  v(-30pt)

  if (subtitle != none) {
    text(32pt, subtitle, font: "Inter", weight: "medium")
    v(-20pt)
  }

  line(length: 100%, stroke: 2pt)
  v(-20pt)

  text(32pt, doctype, font: "Inter", weight: "light")
  v(-16pt)

  text(24pt, status, font: "Inter", weight: "extralight")
  v(-12pt)

  line(length: 100%, stroke: 2pt)

  v(-2pt)
  text(20pt, version, font: "Inter", weight: "light")
  v(-6pt)
  text(16pt, date, font: "Inter", weight: "light")
  v(-4pt)
  text(12pt, "Contact: " + link("mailto:admin@trustedcomputinggroup.org"), font: "Inter", weight: "extralight")

  //
  // Front matter
  //
  let foot = (
    line(length: 100%, stroke: 0.5pt)
      + grid(
        align: (left, center, right),
        columns: (1in, 5.5in, 1in),
        rows: 0.5in,
        text(sym.copyright + " " + year + " TCG", font: "Inter", weight: "light"),
        text(title + if subtitle != none { " - " + subtitle }, font: "Inter", weight: "light"),
        text(
          context counter(page).display(
            "1",
            both: false,
          ),
          font: "Inter",
          weight: "light",
        ),
      )
  )
  set text(font: "Inter", weight: "light")
  set page(
    paper: "us-letter",
    margin: (bottom: 1in, rest: 0.5in),
    footer: foot,
  )

  set align(left + top)

  set text(font: "Manuale", size: 10pt)

  doc
}
