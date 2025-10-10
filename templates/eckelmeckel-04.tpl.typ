/* -------------------------------------------------------------------------- */
/* TCG Typst Template                                                         */
/* Version: 0.2.8                                                             */
/* Filename: 'tcg-typst-template-v0.2.8-alpha.tpl.typ'                        */
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
#let font-text-face = "Literata"
// #let font-text-face = "Gentium Book"
// #let font-text-face = "Libre Baskerville"
// #let font-text-face = "Yrsa"
#let font-text-size = 10.5pt
#let font-mono-face = "Fira Code"
#let font-mono-size = (font-text-size * 0.95)
// #let font-mono-size = (font-text-size * 1.0)
// #let font-mono-size = (font-text-size * 0.89)
// #let font-mono-size = 10.5pt
#let font-math-face = "STIX Two Math"
// #let font-math-face = "Fira Math"
// #let font-math-face = "Noto Sans Math"
#let font-math-size = 10pt



/* --- colors --------------------------------------------------------------- */

/* TCG primary colors */
#let tcg-color-black = rgb("#000000ff")
#let tcg-color-shade = rgb("#f6f6f6ff")
#let tcg-color-gray = rgb("#808080ff")
#let tcg-color-light-gray = rgb("#d9d9d9ff")
#let tcg-color-dark-gray = rgb("#4d4d4fff")
#let tcg-color-orange = rgb("#f8941eff")
#let tcg-color-blue = rgb("#283578ff")
#let tcg-color-light-blue = rgb("#3e75c4ff")
#let tcg-color-light-green = rgb("#8dc73fff")

/* element colors */
#let color-code-fg = tcg-color-black
#let color-code-bg = tcg-color-shade
#let color-table-row-odd = rgb("#ffffff00")
#let color-table-row-even = tcg-color-shade

/* document type colors */
#let color-doctype-default = tcg-color-orange
#let color-doctype-specification = tcg-color-blue
#let color-doctype-reference = tcg-color-light-green
#let color-doctype-guidance = tcg-color-orange



/* --- variables ------------------------------------------------------------ */

#let tcg-label-table-of-contents = "Contents"
#let tcg-label-list-of-figures = "Figures"
#let tcg-label-list-of-tables = "Tables"
#let tcg-label-list-of-listings = "Listings"
#let tcg-label-list-of-equations = "Equations"

#let tcg-toc-depth = 3



/* --- definitions ---------------------------------------------------------- */

#let table-top-rule = table.hline(stroke: 0.08em)
#let table-bottom-rule = table-top-rule
#let table-middle-rule = table.hline(stroke: 0.05em)
#let table-add-line-space = table.hline(stroke: (thickness: 0.5em, paint: rgb(0, 0, 0, 0)))

#let table-header-text(body) = text(body, weight: "semibold", font: font-head-face)

// Abbreviations
#let tsp = [$thin$]
#let __ = tsp
#let eg = [e.#{ tsp }g.]
#let ie = [i.#{ tsp }e.]
#let ia = [i.#{ tsp }a.]
#let cf = [cf.]


/* --- functions ------------------------------------------------------------ */

/* appendix */
#let appendix(body) = {
  set heading(numbering: "A.1.", supplement: [Appendix])
  counter(heading).update(0)
  body
}

/* horizontal rule */
#let horizontal-rule = line(
  start: (25%, 0%),
  end: (75%, 0%),
  stroke: (thickness: 0.1em, cap: "round"),
)

#let tcg-toc() = context {
  show outline.entry.where(level: 1): set block(above: 1.2em)
  show outline.entry.where(level: 1): set text(size: 1.2em, font: font-head-face, weight: "bold")
  show outline.entry.where(level: 1): it => {
    show repeat: none
    it
  }
  outline(
    title: tcg-label-table-of-contents,
    depth: tcg-toc-depth,
  )
}

#let tcg-lof() = context {
  outline(
    title: tcg-label-list-of-figures,
    target: figure.where(kind: image),
    depth: tcg-toc-depth,
  )
}

#let tcg-lot() = context {
  outline(
    title: tcg-label-list-of-tables,
    target: figure.where(kind: table),
    depth: tcg-toc-depth,
  )
}

#let tcg-lol() = context {
  outline(
    title: tcg-label-list-of-listings,
    target: figure.where(kind: raw),
    depth: tcg-toc-depth,
  )
}

#let tcg-loe() = context {
  outline(
    title: tcg-label-list-of-equations,
    target: figure.where(kind: math.equation),
    depth: tcg-toc-depth,
  )
}

/**
 * @brief Creates a captioned rule suitable for captioning, especially for titlepages.
 *
 * @param[in] stroke The stroke style for the rule and the caption box.
 * @param[in] text-color The text color of the caption.
 * @param[in] bg-color The background-color of the caption box.
 * @param[in] box-align The alignment of the caption box.
 * @param[in] box-inset The inset of the caption box.
 * @param[in] box-radius The radius of the caption box.
 * @param[in] solid Specifies whether the caption box is filled with the background color (`true`), or not (`else`).
 * @param[in] box-shift-correction Allows to fine-tune the alignment of the caption box.
 * @param[in] body The content.
 **/
#let captioned-rule(
  stroke: 2pt,
  text-color: white,
  bg-color: black,
  box-align: center,
  box-left-margin: 0em,
  box-right-margin: 0em,
  box-inset: 0.5em,
  box-radius: 0.5em,
  solid: true,
  boxed: true,
  box-shift-correction: 0pt,
  body,
) = context {
  /* compute box height */
  let body-height = measure(body).height
  let box-height = (measure(body).height) + (box-inset * 2) + stroke
  // let box-height = (measure(body).height * 1.15) + (box-inset * 2) + stroke
  // let box-height = measure(body).height + (box-inset * 2)

  /* compute box shift */
  let box-shift = -(box-height - (stroke / 2) - box-shift-correction)
  // let box-shift = -(box-height + (body-height * 0.1))

  /* set colors */
  let line-color = bg-color
  let stroke-color = if (boxed) { line-color } else { text-color }
  let box-bg-color = {
    if (boxed) {
      if (solid) { bg-color } else { text-color }
    } else {
      text-color
    }
  }
  let text-color = {
    if (boxed) {
      if (solid) { text-color } else { bg-color }
    } else {
      bg-color
    }
  }

  /* construct and display it */
  stack(
    spacing: 0em,
    align(center + horizon)[
      #box(height: box-height, width: auto, fill: none, line(length: 100%, stroke: stroke + line-color))],
    v(box-shift),
    align(box-align + horizon)[
      #h(box-left-margin)
      #box(width: auto, fill: box-bg-color, inset: box-inset, radius: box-radius, stroke: stroke + stroke-color, text(
        body,
        fill: text-color,
      ))
      #h(box-right-margin)
    ],
  )
}

#let rule-rounded(
  stroke: (paint: tcg-color-black, thickness: 1.5pt, cap: "round"),
  invert-curve-direction: false,
) = context {
  if not invert-curve-direction {
    curve(
      fill: none,
      stroke: stroke,
      curve.move((0%, 5pt)),
      curve.cubic(none, (0%, 0%), (1%, 0%)),
      curve.line((99%, 0pt)),
      curve.cubic(none, (100%, 0pt), (100%, 5pt)),
    )
  } else {
    curve(
      fill: none,
      stroke: stroke,
      curve.move((0%, 0%)),
      curve.cubic(none, (0%, 5pt), (1%, 5pt)),
      curve.line((99%, 5pt)),
      curve.cubic(none, (100%, 5pt), (100%, 0%)),
    )
  }
}

/**
 * @brief Creates a captioned rounded rule suitable for captioning, especially for titlepages.
 *
 * @param[in] stroke The stroke style for the rule and the caption box.
 * @param[in] text-color The text color of the caption.
 * @param[in] bg-color The background-color of the caption box.
 * @param[in] box-align The alignment of the caption box.
 * @param[in] box-inset The inset of the caption box.
 * @param[in] box-radius The radius of the caption box.
 * @param[in] invert-curve-direction Specifies whether the box is open to the bottom (`false`, default), or to the top (`true`).
 * @param[in] solid Specifies whether the caption box is filled with the background color (`true`), or not (`false`).
 * @param[in] box-shift-correction Allows to fine-tune the alignment of the caption box.
 * @param[in] body The content.
 **/
#let captioned-rule-rounded(
  stroke: 2pt,
  text-color: white,
  bg-color: black,
  box-align: center,
  box-left-margin: 0em,
  box-right-margin: 0em,
  box-inset: 0.5em,
  box-radius: 0.5em,
  invert-curve-direction: false,
  solid: true,
  boxed: true,
  box-shift-correction: 0pt,
  body,
) = context {
  /* constants */
  let curve-size = 5pt

  /* compute box height */
  let body-height = measure(body).height
  let box-height = (measure(body).height) + (box-inset * 2) + stroke

  /* compute box shift */
  let box-shift = -(box-height - (stroke / 2) - box-shift-correction - curve-size + stroke)
  if invert-curve-direction { box-shift += curve-size }

  /* set colors */
  let line-color = bg-color
  let stroke-color = if (boxed) { line-color } else { text-color }
  let box-bg-color = {
    if (boxed) {
      if (solid) { bg-color } else { text-color }
    } else {
      text-color
    }
  }
  let text-color = {
    if (boxed) {
      if (solid) { text-color } else { bg-color }
    } else {
      bg-color
    }
  }

  /* construct and display it */
  v(-box-shift)
  stack(
    spacing: 0em,
    align(center + horizon)[
      #rule-rounded(invert-curve-direction: invert-curve-direction, stroke: (
        paint: stroke-color,
        thickness: stroke,
        cap: "round",
      ))
    ],
    v(box-shift),
    align(box-align + horizon)[
      #h(box-left-margin)
      #box(width: auto, fill: box-bg-color, inset: box-inset, radius: box-radius, stroke: stroke + stroke-color, text(
        body,
        fill: text-color,
      ))
      #h(box-right-margin)
    ],
  )
}

/* informative box(es) */
#let informative-eckelmeckel-01(
  kind: none,
  content,
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
          inset: (left: 10pt, right: 10pt),
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
      inset: (left: 10pt, right: 10pt),
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

#let informative-eckelmeckel-02(
  kind: none,
  content,
) = context {
  let kind = if kind != none { kind } else { "Informative Text" }
  let post = none

  let meas = measure(content)

  if meas.height < 2in {
    block(
      breakable: false,
      [
        #captioned-rule-rounded(
          text([\u{1f6c8} ~ ] + kind + "  ", font: font-head-face, weight: "bold", baseline: -0.1em),
          solid: false,
          stroke: 1.5pt,
          box-radius: 1em,
          box-inset: 0.3em,
          box-align: left,
          box-left-margin: 1em,
        )

        #block(
          [
            #content
          ],
          width: 100%,
          inset: (left: 10pt, right: 10pt),
        )

        #v(-0.6em)
        #align(center + horizon)[
          #rule-rounded(invert-curve-direction: true)]
      ],
    )
  } else {
    block(
      breakable: false,
      [
        #captioned-rule-rounded(
          text([\u{1f6c8} ~ Start of ] + kind + "  ", font: font-head-face, weight: "bold", baseline: -0.1em),
          solid: false,
          stroke: 1.5pt,
          box-radius: 1em,
          box-inset: 0.3em,
          box-align: left,
          box-left-margin: 1em,
        )
      ],
    )
    block(
      [
        #content
      ],
      width: 100%,
      inset: (left: 10pt, right: 10pt),
    )
    block(
      breakable: false,
      [
        #captioned-rule-rounded(
          text([\u{1f6c8} ~ End of ] + kind + "  ", font: font-head-face, weight: "bold", baseline: -0.1em),
          solid: false,
          stroke: 1.5pt,
          box-radius: 1em,
          box-inset: 0.3em,
          // box-align: left,
          box-align: right,
          box-left-margin: 1em,
          box-right-margin: 1em,
          invert-curve-direction: true,
        )
      ],
    )
  }
}

#let informative-eckelmeckel-03(
  kind: none,
  content,
) = context {
  let kind = if kind != none { kind } else { "Informative Text" }
  let post = none

  let meas = measure(content)

  if meas.height < 2in {
    block(
      breakable: false,
      [
        #rule-rounded(invert-curve-direction: false)
        #block(
          [
            #v(-1em)
            #text([\u{1f6c8} ~ ] + kind, font: font-head-face, weight: "bold", baseline: -0.1em)

            #content
          ],
          width: 100%,
          inset: (left: 10pt, right: 10pt),
        )

        #v(-0.6em)
        #align(center + horizon)[
          #rule-rounded(invert-curve-direction: true)]
      ],
    )
  } else {
    block(
      breakable: false,
      [
        #rule-rounded(invert-curve-direction: false)
        #block(
          [
            #v(-1em)
            #text([\u{1f6c8} ~ Start of ] + kind, font: font-head-face, weight: "bold")
          ],
          width: 100%,
          inset: (left: 10pt, right: 10pt),
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
        #rule-rounded(invert-curve-direction: true)
      ],
    )
  }
}

#let informative = informative-eckelmeckel-02

#let tcg-doc(
  title: "The Coolest and Most Awesome TCG Document Ever Made",
  subtitle: "A TCG Specification",
  doctype: "Specification", // must be one of "Specification", "Reference", "Guidance"
  status: "Draft", // must be one of "Draft", "Published"
  version: "Version 184, Revision 0.37",
  date: "April 15, 2003",
  year: none,
  has-appendix: false,
  doc,
) = context {
  /* --- font settings ------------------------------------------------------ */
    /* normal text */
  set text(
    font: font-text-face,
    size: font-text-size,
  )
  /* math text */
  show math.equation: set text(
    font: font-math-face,
    size: font-math-size,
  )
  /* link text */
  show link: it => {
    underline(
      evade: true,
      offset: 2pt,
      // extent: 2pt,
      stroke: (
        thickness: 0.5pt,
        paint: tcg-color-blue,
        // paint: tcg-color-black,
        // paint: tcg-color-orange,
      ),
      text(
        // fill: tcg-color-black,
        fill: tcg-color-blue,
      )[#it],
    )
  }
  // show link: set text(
  //   fill: tcg-color-light-blue,
  //   underline()
  //   // font: font-mono-face,
  //   // size: font-mono-size,
  // )
  // /* code text */
  show raw: set text(
    font: font-mono-face,
    ligatures: false,
    discretionary-ligatures: false,
    historical-ligatures: false,
    alternates: true,
    // number-type: "old-style",
    size: font-mono-size,
  )
  /* code block */
  set raw(
    tab-size: 4,
    syntaxes: "../themes/cddl.sublime-syntax",
    theme: "../themes/GitHub.tmTheme",
    lang: none,
    block: true,
  )
  show raw: it => {
    set text(font: font-mono-face, size: font-mono-size * 0.89, fill: rgb(color-code-fg))
    set block(
      fill: rgb(color-code-bg),
      inset: 1em,
      radius: 0.5em,
    )
    it
  }

  /* caption positions */
  show figure.where(
    kind: image,
  ): set figure.caption(position: bottom)
  show figure.where(
    kind: table,
  ): set figure.caption(position: bottom)
  show figure.where(
    kind: raw,
  ): set figure.caption(position: top)

  /* colors */
  let color-doctype = {
    if (lower(doctype) == "specification") {
      color-doctype-specification
    } else if (lower(doctype) == "reference") {
      color-doctype-reference
    } else if (lower(doctype) == "guidance") {
      color-doctype-guidance
    } else {
      color-doctype-default
    }
  }

  /* headings */

  set heading(numbering: if (has-appendix) { "1.1." } else { "1.1" })

  show heading: it => block(
    above: 2.5em - it.level * 0.2em,
    below: 1.3em,
  )[
    #let size = font-head-size - it.level * 3pt
    #if (size < 10pt) { size = 10pt }
    #set align(left)
    #set text(
      font: font-head-face,
      size: size,
      weight: "bold",
    )
    #it
  ]

  /* page numbering */
  set page(numbering: "1")

  // Outline Table of Content/Figures/Tables/etc.
  // show outline.entry.where(level: 1): set block(above: 1.2em)
  // show outline.entry.where(level: 1): set text(size: 1.2em, font: font-head-face, weight: "bold")
  // show outline.entry.where(level: 1): it => {
  //   show repeat: none
  //   it
  // }
  // show outline.entry: it => link(
  //   it.element.location(),
  //   it.indented(it.prefix(), it.inner()),
  // )

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

  /* make figure blocks, especially code/raw and table block, break/span across pages */
  show figure: set block(breakable: true)

  /* caption positions */
  show figure.where(kind: table): set figure.caption(position: bottom)
  show figure.where(kind: image): set figure.caption(position: bottom)
  show figure.where(kind: raw): set figure.caption(position: top) // code

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
      fill: color-doctype,
      // fill: black,
      inset: 6pt,
      radius: 4pt,
      stroke: none,
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
  // text(12pt, "Contact: " + link("mailto:admin@trustedcomputinggroup.org")[#text(font: font-head-face)[admin\@trustedcomputinggroup.org]], font: font-head-face, weight: "light")
  text(12pt, font: font-head-face, weight: "light")[Contact: #link("mailto:admin@trustedcomputinggroup.org")]

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
