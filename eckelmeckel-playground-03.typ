#import "@preview/acrostiche:0.5.2": *
#import "@preview/subpar:0.2.2"
#import "templates/eckelmeckel-04.tpl.typ": *
// During development of a template, set the above line to whatever you want.
// The build script will use sed to edit this line to import each template.
#show: tcg-doc.with(
  title: "Root Credential Platform Identifier",
  subtitle: "A TCG Ipsum Specification",
  doctype: "Specification",
  // doctype: "Reference",
  // doctype: "Guidance",
  status: "Published",
  version: "Version 184",
  date: datetime.today().display("[month repr:long] [day padding:none], [year]"),
  year: datetime.today().display("[year]"),
  has-appendix: true, // needed for section numbering style ("1" vs "1.")
)

/* acronyms */
#include "acronyms/acronyms.typ"

#pagebreak()

#heading("Disclaimers, Notices, and License Terms", level: 1, numbering: none, outlined: false)

THIS SPECIFICATION IS PROVIDED “AS IS” WITH NO WARRANTIES WHATSOEVER, INCLUDING ANY WARRANTY OF MERCHANTABILITY, NONINFRINGEMENT, FITNESS FOR ANY PARTICULAR PURPOSE, OR ANY WARRANTY OTHERWISE ARISING OUT OF ANY PROPOSAL, SPECIFICATION OR SAMPLE.

Without limitation, TCG disclaims all liability, including liability for infringement of any proprietary rights, relating to use of information in this specification and to the implementation of this specification, and TCG disclaims all liability for cost of procurement of substitute goods or services, lost profits, loss of use, loss of data or any incidental, consequential, direct, indirect, or special damages, whether under contract, tort, warranty or otherwise, arising in any way out of use or reliance upon this specification or any information herein.

This document is copyrighted by Trusted Computing Group (TCG), and no license, express or implied, is granted herein other than as follows: You may not copy or reproduce the document or distribute it to others without written permission from TCG, except that you may freely do so for the purposes of (a) examining or implementing TCG specifications or (b) developing, testing, or promoting information technology standards and best practices, so long as you distribute the document with these disclaimers, notices, and license terms.
Contact the Trusted Computing Group at #link("https://www.trustedcomputinggroup.org/")[www.trustedcomputinggroup.org] for information on specification licensing through membership agreements.
Any marks and brands contained herein are the property of their respective owners.

#heading("Statement Types", level: 1, numbering: none, outlined: false)

Please note an important distinction between different sections of text throughout this document.
There are two distinctive kinds of text: *informative comments* and *normative statements*.

Whether a statement is normative or informative is typically clear from context.
In cases where the context does not provide sufficient clarity, the following rules apply:

1. A statement with a capitalized RFC key word ("MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL~NOT", "SHOULD",
  "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL") as in #link("https://doi.org/10.17487/RFC8174")[RFC~8174] is always normative.

2. Text that is delimited by horizontal rules and labeled as an informative statement, note, example, etc. is always informative.

#informative(
  kind: "Note",
  [Reach out to #link("mailto:admin@trustedcomputinggroup.org") with any questions about this document.],
)

= TODO

+ Fira Mono
+ "Code style" for informative text
+ Pull request

#pagebreak()


// Table of contents
#tcg-toc()
// List of Figures
#tcg-lof()
// List of Tables
#tcg-lot()
// List of Listings
#tcg-lol()
// List of Equations
#tcg-loe()

#pagebreak()


// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
//
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------



= Introduction

Critical dolor `text` sit amet systems have an occasional need to verify the consecteturs.
One typical technique _for_ this is *called* consectetur _*attestation*_.
This document provides definitions and requirements for consectetur attestation in the PC Client and Datacenter environments.



= Scope

== In Scope

Consecteturs that form part of a computer network or enterprise environment.

== Out of Scope

Air-gapped consecteturs, non-consectutor amets.

== Trusted Computing Group

Trusted Computing Group (TCG)'s logo is _not_ depicted in the below figure (@fig:not-the-tcg-logo):

#figure(
  image("architecture.drawio.png", width: 60%),
  caption: [Consectetur Attestation],
) <fig:not-the-tcg-logo>

=== Lorem Ipsum Workgroup

The Lorem Ipsum workgroup defines the consectutor and other ipsum attestation scenarios at their bimonthly tea parties.

#informative(
  kind: "Note",
  [
    By "bimonthly" we mean that the workgroup meets every other month.
  ],
)

= A Lot of Text

Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur. Excepteur sint verified boot cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id PCR laborum.

When providing evidence about a consectutor, the Attesting Environment SHALL furnish the dolor.

#informative([
  This section contains a long informative comment. It is so long, it's more
  of an informative section, really. This section breaks across pages.

  == It contains sub-headings

  Which is pretty neat if you think about it. Duis aute irure dolor in repudiation in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Exception sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore _magna_ aliqua (cf. @tab:informative-table as well as #ref(<tab:events>) and @tab:planets on #ref(<tab:planets>, form: "page").

  #figure(
    table(
      columns: (0.5fr, 0.5fr),
      inset: 10pt,
      align: horizon,
      table.header([*Can you*], [*Believe It*]),

      [ It ], [ Even ],
      [ Has ], [ A Table ],
    ),
    caption: [An informative table],
  ) <tab:informative-table>
])

Stuff after the big informative.

== Math

In case you forgot:

$ sum_(k=1)^n k = (n(n+1)) / 2 $



== Tables Again

Look at this awsome @tab:planets (alternatively: #ref(<tab:planets>)).

#figure(
  caption: [The Planets of the Solar System and Their Average Distance from the Sun],
  placement: top,
  table(
    // Table styling is not mandated by the IEEE. Feel free to adjust these
    // settings and potentially move them into a set rule.
    columns: (6em, auto),
    align: (left, right),
    inset: (x: 8pt, y: 4pt),
    stroke: (x, y) => if y <= 1 { (top: 0.5pt) },
    fill: (x, y) => if y > 0 and calc.rem(y, 2) == 0 { rgb(color-table-row-even) },

    table.header[#table-header-text([Planet])][#table-header-text([Distance (million km)])],
    [Mercury], [57.9],
    [Venus], [108.2],
    [Earth], [149.6],
    [Mars], [227.9],
    [Jupiter], [778.6],
    [Saturn], [1,433.5],
    [Uranus], [2,872.5],
    [Neptune], [4,495.1],
  ),
) <tab:planets>

#figure(
  table(
    columns: (auto, auto),
    align: (left, left),
    stroke: none,
    table-top-rule,
    table.header(
      repeat: true,
      table-header-text("Date"),
      table-header-text(
        [Event -- may include symbols and special characters: #{ sym.suit } #{ sym.copyleft } #{ sym.copyright } #{ sym.lambda }],
      ),
    ),
    table-middle-rule,

    // 2021
    [2022-04-09], [Kickoff (virtual)],
    [2022-04-14 -- 2021-04-15], [Conference Trustworthy Systems],
    [2022-11-11], [Workshop Threat and Risk Assessment],
    [2022-12-02], [Preparation for Conference Talk],

    // 2023
    table-middle-rule,
    //
    [2023-01-14], [Internal Workshop ML],
    [2023-04-03], [Talk from Jane Doe],
    [2023-05-08 -- 2023-05-09], [Hackathon Attestation],
    [2023-11-13 -- 2023-11-14], [Team Event],

    // 2024
    table-middle-rule,
    //
    [2024-02-21], [4th Digital Cooperation Workshop],
    [2024-04-09 -- 2024-04-11], [Embedded World 2024],
    [2024-06-04 -- 2024-06-05], [Trustworthy Electronics Days 2024],
    [2024-06-17 -- 2024-06-18], [Project Meeting (Alaska)],
    [2025-01-15], [Final Workshop: Theory of Everything],
    table-bottom-rule,
  ),
  caption: [Project-related events],
) <tab:events>



= General Formatting

This chapter demonstrates several formatting and elements.

== Font styles

This is text in *bold*, this is text in _italics (emphasized)_.
*_bold italic text_* or _*italic bold*_ text which actually should be the same.

There is even #underline[underlined text], but it should be used with care as it is intended for emphasizing text.
Strike-through #strike[text] should be used in rare cases only.

Oh, sure there is also `inline code` that comes in handy from time to time.

== Symbols

Symbols and emojis can be used directly in Typst with `#sym` and `#emoji`.
You can use it like `#sym.arrow.r.l` or `#{sym.arrow.r.l}`---both producing the "#{ sym.arrow.r.l }" symbol---while the latter is generally preferred.
Some more symbols and emojis for reference (find more at #link("https://typst.app/docs/reference/symbols/")):

#align(center)[
  #table(
    columns: (auto, auto, auto, auto),
    align: (right, left, right, left),
    stroke: none,
    table-top-rule,
    table.header(repeat: true,)[
      #table-header-text("Symbol")
    ][
      #table-header-text("Symbol Code")
    ][
      #table-header-text("Emoji")
    ][
      #table-header-text("Emoji Code")
    ],
    table-middle-rule,
    // ),

    // 2021
    [#{ sym.dots }], [`#{ sym.dots }`], [#{ emoji.avocado }], [`#{ emoji.avocado }`],
    [#{ sym.arrow }], [`#{ sym.arrow }`], [#{ emoji.tomato }], [`#{ emoji.tomato }`],
    [#{ sym.arrow.r }], [`#{ sym.arrow.r }`], [#{ emoji.alien }], [`#{ emoji.alien }`],
    [#{ sym.arrow.r.l }], [`#{ sym.arrow.r.l }`], [#{ emoji.warning }], [`#{ emoji.warning }`],
    [#{ sym.alpha }], [`#{ sym.alpha }`], [#{ emoji.megaphone }], [`#{ emoji.megaphone }`],
    [#{ sym.trademark }], [`#{ sym.trademark }`], [#{ emoji.crocodile }], [`#{ emoji.crocodile }`],
    table-bottom-rule,
  )
]

The full set of unicode is supported directly (font must support it!.

- \u{2ad9} (`\u{2ad9}`) and \u{2adb} (`\u{2adb}`)
- Black square: ■ (`\u{25A0}`)
- End of Proof/Halmos: ∎ (`\u{220E}`)
- Small black square: ▪ (`\u{25AA}`)
- White square: □ (`\u{25A1}`)
- Black circle: ● (`\u{25CF}` or `#{sym.circle.filled}`)
- Standard bullet: • (`\u{2022}`)
- Pilcrow: ¶ (`\u{00B6}`)
- Ellipsis: … (`\u{2026}`)
- En-dash: -- (`--` or `\u{2013}`)
- Em-dash: --- (`---` or `\u{2014}`)
- Non-breaking space:   (`\u{00A0}` or `~`)
- Copyright sign: © (`\u{00A9}`)
- Registered sign: ® (`\u{00AE}`)
- Trademark: ™ (`\u{2122}`)
- Degree symbol: ° (`\u{00B0}`)
- Greek letters: β (`\u{03B2}`), δ (`\u{03B4}`), Δ (`\u{0394}`), μ (`\u{03BC}`), π (`\u{03C0}`)

== Headings

Heading can have subheadings.

=== Subheading

Yeah, there can be more levels.

=== Like this

Cool, eh?

==== And this

#{ sym.dots }

===== We can go deeper

#{ sym.dots }

====== #{ sym.dots } and deeper

#{ sym.dots }

======= We should stop here

Nobody should need or ever use this depth.



== Paragraphs and Line Breaks

Manual line breaks\
should be used with care\
and only if necessary.\
Here it is entirely unnecessary.

Instead, just use paragraphs. Like this.

And that.


== Lists

There are ordered lists:

+ like this
+ bli
+ bla
+ blubb

or this:

1. One
2. Two
3. Three

And unordered lists:

- alpha
- beta
- gamma
- #{ sym.dots }

You can also mix:

+ First main POINT
  - Sub item
  - Another sub item
+ Hello, *world*
  + abc
  + def
  + ghi
    - jlk
    - mno


== Footnotes

Typst can prodice footnotes, too#footnote[This is a sample footnote, *bold*, _italic_, and #underline[#strike[whatever]].].

== Images/Figures

Images can be included directly with, #{ eg }, `#image("templates/img/tcg-logo.svg", height: 1cm)`:

#image("templates/img/tcg-logo.svg", height: 1cm)

However, typically images are wrapped in a `#figure(...)` environment so that they can be referenced and have a caption: `#figure(image("img/Trusted-Computing-2-2.png", width: 50%), caption: [Trusted Computing]) <fig:tc>` (see @fig:tc):

#figure(image("img/Trusted-Computing-2-2.png", width: 50%), caption: [Trusted Computing]) <fig:tc>

Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.

And there can be subfigures---as in #ref(<fig:standardization-bodies>)---that are: @fig:tcg-logo and @fig:ietf-logo.

#subpar.grid(
  figure(
    image("templates/img/tcg-logo.svg", height: 10em),
    caption: [The #acr("TCG")],
  ),
  <fig:tcg-logo>,

  figure(
    image("img/ietf-logo.svg", height: 10em),
    caption: [The #acr("IETF")],
  ),
  <fig:ietf-logo>,

  columns: (1fr, 1fr),
  caption: [Standardization bodies],
  label: <fig:standardization-bodies>,
)

Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.



== Tables

There can be short tables, such as @tab:sample-short, or longer tables that span across pages and may repeat the header on each page, as shown in @tab:events2.

#figure(
  caption: [Sample table short],
  table(
    columns: 3,
    table.header(
      repeat: true,
      table-header-text[h1], table-header-text[h2], table-header-text[h3],
      [#table.hline()],
    ),
    [1], [2], [3],
    [4], [5], [6],
    [5], [8], [9],
    [a], [b], [c],
  ),
) <tab:sample-short>

#figure(
  table(
    columns: (auto, auto),
    align: (left, left),
    stroke: none,
    table-top-rule,
    table.header(
      repeat: true,
      table-header-text("Date"),
      table-header-text(
        [Event],
      ),
    ),
    table-middle-rule,

    // 2016
    table-middle-rule,
    //
    [2016-04-09], [Kickoff (virtual)],
    [2016-04-14], [Conference 1],
    [2016-04-15], [Conference 2],
    [2016-04-16], [Conference 3],
    [2016-04-17], [Conference 4],
    [2016-04-18], [Conference 5],
    [2016-04-18], [Conference 6],
    [2016-04-20], [Conference 7],
    // [2016-04-21], [Conference 8],
    [2016-11-11], [Workshop Threat and Risk Assessment],
    [2016-12-02], [Preparation for Conference Talk],

    // 2017
    table-middle-rule,
    //
    [2017-04-09], [Kickoff (virtual)],
    [2017-04-14 -- 2021-04-15], [Conference Trustworthy Systems],
    [2017-11-11], [Workshop Threat and Risk Assessment],
    [2017-12-02], [Preparation for Conference Talk],

    // 2018
    table-middle-rule,
    //
    [2018-04-09], [Kickoff (virtual)],
    [2018-04-14 -- 2021-04-15], [Conference Trustworthy Systems],
    [2018-11-11], [Workshop Threat and Risk Assessment],
    [2018-12-02], [Preparation for Conference Talk],

    // 2019
    table-middle-rule,
    //
    [2019-04-09], [Kickoff (virtual)],
    [2019-04-14 -- 2021-04-15], [Conference Trustworthy Systems],
    [2019-11-11], [Workshop Threat and Risk Assessment],
    [2019-12-02], [Preparation for Conference Talk],

    // 2020
    table-middle-rule,
    //
    [2020-04-09], [Kickoff (virtual)],
    [2020-04-14 -- 2021-04-15], [Conference Trustworthy Systems],
    [2020-11-11], [Workshop Threat and Risk Assessment],
    [2020-12-02], [Preparation for Conference Talk],

    // 2021
    table-middle-rule,
    //
    [2021-04-09], [Kickoff (virtual)],
    [2021-04-14 -- 2021-04-15], [Conference Trustworthy Systems],
    [2021-11-11], [Workshop Threat and Risk Assessment],
    [2021-12-02], [Preparation for Conference Talk],

    // 2021
    table-middle-rule,
    //
    [2022-04-09], [Kickoff (virtual)],
    [2022-04-14 -- 2021-04-15], [Conference Trustworthy Systems],
    [2022-11-11], [Workshop Threat and Risk Assessment],
    [2022-12-02], [Preparation for Conference Talk],

    // 2023
    table-middle-rule,
    //
    [2023-01-14], [Internal Workshop ML],
    [2023-04-03], [Talk from Jane Doe],
    [2023-05-08 -- 2023-05-09], [Hackathon Attestation],
    [2023-11-13 -- 2023-11-14], [Team Event],

    // 2024
    table-middle-rule,
    //
    [2024-01-10], [Developer Meeting],
    [2024-01-21], [Developer Meeting],
    [2024-01-22], [Developer Meeting],
    [2024-01-23], [Developer Meeting],
    [2024-02-24], [4th Digital Cooperation Workshop],
    [2024-04-09 -- 2024-04-11], [Embedded World 2024],
    [2024-06-04 -- 2024-06-05], [Trustworthy Electronics Days 2024],
    [2024-06-17 -- 2024-06-18], [Project Meeting (Alaska)],
    [2025-01-15], [Final Workshop: Theory of Everything],
    table-bottom-rule,
  ),
  caption: [Some project-related events],
) <tab:events2>


== Math & Equations

You can have inline math like $1+2$ and $n=infinity$, or you can have equations:

$ 7 dot 7 = 49 $

If you want to reference mathematical equations, it is best to do it as in @eqn:test.

#figure(
  kind: math.equation,
  $
    g_x^y = frac(a, b)
  $,
  caption: [Test Equation],
) <eqn:test>


== Code

Here is some Rust code, no caption, no number, no label:

```rs
fn main() {}
```

Now with caption, number, and label (see #ref(<lst:awesome-code>) on #ref(<lst:awesome-code>, form: "page")).

#figure(
  ```c
  int myfun(void) {
    printf("%s", "Hello, world!");
  }
  ```,
  caption: [The most awesome code in the world. The best.],
) <lst:awesome-code>


And finally, we include a bigger chunk of sourcecode (this code was boldly stolen from GitHub: #link("https://github.com/Fraunhofer-SIT/paper-towards-practical-hardware-fingerprinting-for-remote-attestation/blob/main/analog-measurement-log-format/analog-log-format.cddl")).
The #acr("CDDL") code in @lst:sample-cddl-code uses a custom syntax theme.

#figure(
  caption: [#acr("CDDL") code for the analog hardware measurement logs],
  ```cddl
  ; SPDX-License-Identifier: BSD-3-Clause
  ; ------------------------------------------------------------------------------
  ; BSD 3-Clause "New" or "Revised" License
  ; ------------------------------------------------------------------------------
  ; Copyright 2024, Fraunhofer Institute for Secure Information Technology SIT.
  ; All rights reserved.
  ; ------------------------------------------------------------------------------
  ; Log format for analog hardware measurements.
  ; ------------------------------------------------------------------------------
  ; Author:        Michael Eckel <michael.eckel@sit.fraunhofer.de>
  ; Date Modified: 2024-06-10T10:47:28+00:00
  ; Date Created:  2024-06-10T10:47:28+00:00
  ; ------------------------------------------------------------------------------

  AnalogMeasurement = [
      version-tag: uint,  ; version of the format specification
      start-time: Time,
      measurements: [ * MeasurementSeries ]
  ]

  MeasurementSeries = (
      target: Target,
      ?env-params: [ * NameValuePair ],
      ?start-time: Time,
      unit: Unit,
      unit-multiple: UnitMultiple,
      measurements: RegularMeasurementSeries
                 // IrregularMeasurementSeries,
  )

  Target = [
      id: tstr,
      ?config-params: [ * NameValuePair ],
  ]

  NameValuePair = (
      name: text,
      value: any,
  )

  RegularMeasurementSeries = {
      values => [ * NumericalValue ],
      interval-frequency-duration,
  }

  interval-frequency-duration //= (interval => Time)
  interval-frequency-duration //= (frequency => Frequency)
  interval-frequency-duration //= (duration => Time)
  values                        = 0
  interval                      = 1
  frequency                     = 2
  duration                      = 3

  IrregularMeasurementSeries = [ * (
          current-time: Time,
          NumericalValue,
      ),
  ]

  Time = [
      seconds:   uint / float,
      unit-mult: UnitMultipleSi,
  ]

  Frequency = [
      hertz:         uint / float,
      unit-multiple: UnitMultipleSi,
  ]

  NumericalValue = (
      value: int / float,
  )

  Unit = &(
      UNIT_UNDEFINED                 :  0,
      UnitElectricalSi,
  )  ; EXTENSION POINT for future units

  UnitElectricalSi = &(
      UNIT_ELECTRICAL_SI_NONE        :  1,  ; none    (raw ADC)
      UNIT_ELECTRICAL_SI_VOLTAGE     :  2,  ; Volt    (V or E)
      UNIT_ELECTRICAL_SI_CURRENT     :  3,  ; Ampere  (I or i)
      UNIT_ELECTRICAL_SI_RESISTANCE  :  4,  ; Ohm     (R)
      UNIT_ELECTRICAL_SI_CONDUCTANCE :  5,  ; Siemens (G)
      UNIT_ELECTRICAL_SI_CAPACITANCE :  6,  ; Farad   (C)
      UNIT_ELECTRICAL_SI_CHARGE      :  7,  ; Coulomb (Q)
      UNIT_ELECTRICAL_SI_INDUCTANCE  :  8,  ; Henry   (L or H)
      UNIT_ELECTRICAL_SI_POWER       :  9,  ; Watts   (W)
      UNIT_ELECTRICAL_SI_IMPEDANCE   : 10,  ; Ohm     (Z)
      UNIT_ELECTRICAL_SI_FREQUENCY   : 11,  ; Hertz   (Hz)
  )

  UnitMultiple = &(
      UnitMultipleSi,
  )  ; EXTENSION POINT for future unit multiples

  UnitMultipleSi = &(
      UNIT_MULTIPLE_SI_YOCTO         : -24,  ; y       (10^-24)
      UNIT_MULTIPLE_SI_ZEPTO         : -21,  ; z       (10^-21)
      UNIT_MULTIPLE_SI_ATTO          : -18,  ; a       (10^-18)
      UNIT_MULTIPLE_SI_FEMTO         : -15,  ; f       (10^-15)
      UNIT_MULTIPLE_SI_PICO          : -12,  ; p       (10^-12)
      UNIT_MULTIPLE_SI_NANO          :  -9,  ; n       (10^-9)
      UNIT_MULTIPLE_SI_MICRO         :  -6,  ; u       (10^-6)
      UNIT_MULTIPLE_SI_MILLI         :  -3,  ; m       (10^-3)
      UNIT_MULTIPLE_SI_CENTI         :  -2,  ; c       (10^-2)
      UNIT_MULTIPLE_SI_DECI          :  -1,  ; d       (10^-1)
      UNIT_MULTIPLE_SI_BASE          :   0,  ; base    (10^0)
      UNIT_MULTIPLE_SI_DECA          :   1,  ; da      (10^1)
      UNIT_MULTIPLE_SI_HECTO         :   2,  ; h       (10^2)
      UNIT_MULTIPLE_SI_KILO          :   3,  ; k       (10^3)
      UNIT_MULTIPLE_SI_MEGA          :   6,  ; M       (10^6)
      UNIT_MULTIPLE_SI_GIGA          :   9,  ; G       (10^9)
      UNIT_MULTIPLE_SI_TERA          :  12,  ; T       (10^12)
      UNIT_MULTIPLE_SI_PETA          :  15,  ; P       (10^15)
      UNIT_MULTIPLE_SI_EXA           :  18,  ; E       (10^18)
      UNIT_MULTIPLE_SI_ZETTA         :  21,  ; Z       (10^21)
      UNIT_MULTIPLE_SI_YOTTA         :  24,  ; Y       (10^24)
  )
  ```,
) <lst:sample-cddl-code>


== Miscellaneous

Now, let us use some abbreviations, such as #acr("DICE") and #acr("TPM").
If we use it again, like so: #acr("TPM"), it only displays the short version #cite(<rfc9684>).
Let's have some more citations @rfc9334@harry.
And some TCG specifications, too @tcg:cel-v1r041 @tcg:pclient:pfp, @tcg-key-dev-id.
And let's intermix some code, just `because` we ```c can```.


== Typst Documentation

For further help, please refer to the Typst documentation:#link("https://typst.app/docs/").





= TCG Formatting

TCG documents have some special text elements that go beyond standard formatting and markup (#{ cf } @sec:typo-elements).
Further, informative text and notes are available to distinguish _normative_ from _informative_ text  (see @sec:informative-text).

== Special Typographic Elements <sec:typo-elements>

#align(center)[
  #table(
    columns: (auto, auto, auto),
    align: (right, left, left),
    stroke: none,
    table-top-rule,
    table.header(repeat: true,)[
      #table-header-text("Shortcut")
    ][
      #table-header-text("Shortcut Code")
    ][
      #table-header-text("Comment")
    ],
    table-middle-rule,
    // ),

    // 2021
    ['#{ __ }' or '#{ tsp }'],
    [`#{__}` or `#{tsp}`],
    [thin space (non-breakable; surrounded by single quotes for display only)],

    [#{ eg }], [`#{eg}`], [for example (from latin "exempli gratia"; uses a _thin_ space)],
    [#{ ie }], [`#{ie}`], [that is (from latin "id est"; uses a _thin_ space)],
    [#{ ia }], [`#{ia}`], [among other things (from latin "inter alia"; uses a _thin_ space)],
    [#{ cf }], [`#{cf}`], [compare (from latin "confer" or "conferatur")],
    table-bottom-rule,
  )
]

== Informative Text/Comments and Other Notes <sec:informative-text>

To demonstrate the different styles, we introduce page breaks with `#pagebreak()` here, so that every style is displayed on a separate page.
See @sec:informative-text-style-1 on #ref(<sec:informative-text-style-1>, form: "page"), @sec:informative-text-style-2 on #ref(<sec:informative-text-style-2>, form: "page"), and @sec:informative-text-style-3 on #ref(<sec:informative-text-style-3>, form: "page").

// Just noticed that this is covered in @sec:informative-text (can also be referenced like this: #ref(<sec:informative-text>) on #ref(<sec:informative-text>, form: "page")).


#pagebreak()

=== Style 1 <sec:informative-text-style-1>

Intro text.

#informative-eckelmeckel-01([This text fits into a single line.])

Some text.

#informative-eckelmeckel-01([
  This text fits into multiple lines.

  ==== It even has a subheading

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  #horizontal-rule

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  ==== And another one

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.
  scenarios

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.
])


#pagebreak()

=== Style 2 <sec:informative-text-style-2>

Intro text.

#informative-eckelmeckel-02([This text fits into a single line.])

#informative-eckelmeckel-02([
  This text fits into multiple lines.

  ==== It even has a subheading

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  #horizontal-rule

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  ==== And another one

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.
  scenarios

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.
])


#pagebreak()

=== Style 3 <sec:informative-text-style-3>

Intro text.

#informative-eckelmeckel-03([
  #rect(fill: tcg-color-shade, width: 100%)[This text fits into a single line.]
])

#informative-eckelmeckel-03([
  This text fits into multiple lines.

  ==== It even has a subheading

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  #horizontal-rule

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  ==== And another one

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.
  scenarios

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.
])








/*-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------*/
/*--|          ####   #####   #####   #####  #   #  ####   #  #   #         |--*/
/*--|         #    #  #    #  #    #  #      ##  #  #   #  #   # #          |--*/
/*--|         ######  #####   #####   ####   # # #  #   #  #    #           |--*/
/*--|         #    #  #       #       #      #  ##  #   #  #   # #          |--*/
/*--|         #    #  #       #       #####  #   #  ####   #  #   #         |--*/
/*-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------*/

#show: appendix

= A Sample Appendix section

An appendix.

== Subsection

#{ sym.dots }

=== Subsubsection

#{ sym.dots }



= Another Appendix with Supplementary Code

Code is taken from #link("https://github.com/tpm2-software/tpm2-tss/blob/master/src/tss2-esys/esys_context.c").

#figure(
  caption: [Sample Code from the _tpm2-tss_],
  ```c
  /* SPDX-License-Identifier: BSD-2-Clause */
  /*******************************************************************************
   * Copyright 2017, Fraunhofer SIT sponsored by Infineon Technologies AG
   * All rights reserved.
   *******************************************************************************/

  #ifdef HAVE_CONFIG_H
  #include "config.h" // IWYU pragma: keep
  #endif
  #include <stdint.h>        // for int32_t
  #include <stdlib.h>        // for NULL, free, calloc, rand, size_t

  #include "esys_crypto.h"   // for iesys_initialize_crypto_backend
  #include "esys_int.h"      // for ESYS_CONTEXT, _ESYS_ASSERT_NON_NULL
  #include "esys_iutil.h"    // for iesys_DeleteAllResourceObjects, ESYS_TR_MI...
  #include "tss2_common.h"   // for TSS2_RC, TSS2_RC_SUCCESS, TSS2_ESYS_RC_BAD...
  #include "tss2_esys.h"     // for ESYS_CONTEXT, ESYS_CRYPTO_CALLBACKS, ESYS_TR
  #include "tss2_sys.h"      // for Tss2_Sys_GetTctiContext, Tss2_Sys_Finalize
  #include "tss2_tcti.h"     // for TSS2_TCTI_CONTEXT, TSS2_TCTI_POLL_HANDLE
  #include "tss2_tctildr.h"  // for Tss2_TctiLdr_Finalize, Tss2_TctiLdr_Initia...

  #define LOGMODULE esys
  #include "util/log.h"      // for LOG_ERROR, goto_if_error, return_if_error

  /** Initialize an ESYS_CONTEXT for further use.
   *
   * Initialize an ESYS_CONTEXT that holds all the state and metadata information
   * during an interaction with the TPM.
   * If not specified, load a TCTI in this order:
   *       Library libtss2-tcti-default.so (link to the preferred TCTI)
   *       Library libtss2-tcti-tabrmd.so (tabrmd)
   *       Device /dev/tpmrm0 (kernel resident resource manager)
   *       Device /dev/tpm0 (hardware TPM)
   *       Device /dev/tcm0 (hardware TCM)
   *       TCP socket localhost:2321 (TPM simulator)
   * @param esys_context [out] The ESYS_CONTEXT.
   * @param tcti [in] The TCTI context used to connect to the TPM (may be NULL).
   * @param abiVersion [in,out] The abi version to check and the abi version
   *        supported by this implementation (may be NULL).
   * @retval TSS2_ESYS_RC_SUCCESS if the function call was a success.
   * @retval TSS2_ESYS_RC_BAD_REFERENCE if esysContext is NULL.
   * @retval TSS2_ESYS_RC_MEMORY if the ESAPI cannot allocate enough memory to
   *         create the context.
   * @retval TSS2_RCs produced by lower layers of the software stack may be
   *         returned to the caller unaltered unless handled internally.
   */
  TSS2_RC
  Esys_Initialize(ESYS_CONTEXT ** esys_context, TSS2_TCTI_CONTEXT * tcti,
                  TSS2_ABI_VERSION * abiVersion)
  {
      TSS2_RC r;
      size_t syssize;

      ESYS_ASSERT_NON_NULL(esys_context);
      *esys_context = NULL;

      /* Allocate memory for the ESYS context
       * After this errors must jump to cleanup_return instead of returning. */
      *esys_context = calloc(1, sizeof(ESYS_CONTEXT));
      return_if_null(*esys_context, "Out of memory.", TSS2_ESYS_RC_MEMORY);

      /* Store the application provided tcti to be return on Esys_GetTcti(). */
      (*esys_context)->tcti_app_param = tcti;

      /* Allocate memory for the SYS context */
      syssize = Tss2_Sys_GetContextSize(0);
      (*esys_context)->sys = calloc(1, syssize);
      goto_if_null((*esys_context)->sys, "Error: During malloc.",
                   TSS2_ESYS_RC_MEMORY, cleanup_return);

      /* If no tcti was provided, initialize the default one. */
      if (tcti == NULL) {
          r = Tss2_TctiLdr_Initialize (NULL, &tcti);
          goto_if_error(r, "Initialize default tcti.", cleanup_return);
      }

      /* Initialize the ESAPI */
      r = Tss2_Sys_Initialize((*esys_context)->sys, syssize, tcti, abiVersion);
      goto_if_error(r, "During syscontext initialization", cleanup_return);

      /* Use random number for initial esys handle value to provide pseudo
         namespace for handles */
      (*esys_context)->esys_handle_cnt = ESYS_TR_MIN_OBJECT + (rand() % 6000000);

      /*
       * setup crypto backend and initialize. Note: their is no userdata or callbacks
       * here, so NULL NULL
       */
      r = iesys_initialize_crypto_backend(&(*esys_context)->crypto_backend, NULL);
      goto_if_error(r, "Initialize crypto backend.", cleanup_return);

      return TSS2_RC_SUCCESS;

  cleanup_return:
      /* If we created the tcti ourselves, we must clean it up */
      if ((*esys_context)->tcti_app_param == NULL && tcti != NULL) {
          Tss2_TctiLdr_Finalize(&tcti);
      }

      /* No need to finalize (*esys_context)->sys only free since
         it is the last goto in this function. */
      free((*esys_context)->sys);
      free(*esys_context);
      *esys_context = NULL;
      return r;
  }

  /** Finalize an ESYS_CONTEXT
   *
   * After interactions with the TPM the context holding the metadata needs to be
   * freed. Since additional internal memory allocations may have happened during
   * use of the context, it needs to be finalized correctly.
   * @param esys_context [in,out] The ESYS_CONTEXT. (will be freed and set to NULL)
   */
  void
  Esys_Finalize(ESYS_CONTEXT ** esys_context)
  {
      TSS2_RC r;
      TSS2_TCTI_CONTEXT *tctcontext = NULL;

      if (esys_context == NULL || *esys_context == NULL) {
          LOG_DEBUG("Finalizing NULL context.");
          return;
      }

      /* Flush from TPM and free all resource objects first */
      iesys_DeleteAllResourceObjects(*esys_context);

      /* If no tcti context was provided during initialization, then we need to
         finalize the tcti context. So we retrieve here before finalizing the
         SAPI context. */
      if ((*esys_context)->tcti_app_param == NULL) {
          r = Tss2_Sys_GetTctiContext((*esys_context)->sys, &tctcontext);
          if (r != TSS2_RC_SUCCESS) {
              LOG_ERROR("Internal error in Tss2_Sys_GetTctiContext.");
              tctcontext = NULL;
          }
      }

      /* Finalize the syscontext */
      Tss2_Sys_Finalize((*esys_context)->sys);
      free((*esys_context)->sys);

      /* If no tcti context was provided during initialization, then we need to
         finalize the tcti context here. */
      if (tctcontext != NULL) {
          Tss2_TctiLdr_Finalize(&tctcontext);
      }

      /* Free esys_context */
      free(*esys_context);
      *esys_context = NULL;
  }

  /** Return the used TCTI context.
   *
   * If a tcti context was passed into Esys_Initialize then this tcti context is
   * return. If NULL was passed in, then NULL will be returned.
   * This function is useful before Esys_Finalize to retrieve the tcti context and
   * perform a clean Tss2_Tcti_Finalize.
   * @param esys_context [in] The ESYS_CONTEXT.
   * @param tcti [out] The TCTI context used to connect to the TPM (may be NULL).
   * @retval TSS2_RC_SUCCESS on Success.
   * @retval TSS2_ESYS_RC_BAD_REFERENCE if esysContext or tcti is NULL.
   */
  TSS2_RC
  Esys_GetTcti(ESYS_CONTEXT * esys_context, TSS2_TCTI_CONTEXT ** tcti)
  {
      ESYS_ASSERT_NON_NULL(esys_context);
      ESYS_ASSERT_NON_NULL(tcti);
      *tcti = esys_context->tcti_app_param;
      return TSS2_RC_SUCCESS;
  }

  /** Return the poll handles of the used TCTI.
   *
   * The connection to the TPM is held using a TCTI. These may optionally provide
   * handles that can be used to poll for incoming data. This is useful when
   * using the asynchronous function of ESAPI in an event-loop model.
   * @param esys_context [in] The ESYS_CONTEXT.
   * @param handles [out] The poll handles (callee-allocated, use free())
   * @param count [out] The number of poll handles.
   * @retval TSS2_RC_SUCCESS on Success.
   * @retval TSS2_ESYS_RC_BAD_REFERENCE if esysContext, handles or count is NULL.
   * @retval TSS2_RCs produced by lower layers of the software stack.
   */
  TSS2_RC
  Esys_GetPollHandles(ESYS_CONTEXT * esys_context,
                      TSS2_TCTI_POLL_HANDLE ** handles, size_t * count)
  {
      TSS2_RC r;
      TSS2_TCTI_CONTEXT *tcti_context;

      ESYS_ASSERT_NON_NULL(esys_context);
      ESYS_ASSERT_NON_NULL(handles);
      ESYS_ASSERT_NON_NULL(count);

      /* Get the tcti-context to use */
      r = Tss2_Sys_GetTctiContext(esys_context->sys, &tcti_context);
      return_if_error(r, "Invalid SAPI or TCTI context.");

      /* Allocate the memory to hold the poll handles */
      r = Tss2_Tcti_GetPollHandles(tcti_context, NULL, count);
      return_if_error(r, "Error getting poll handle count.");
      *handles = calloc(*count, sizeof(TSS2_TCTI_POLL_HANDLE));
      return_if_null(*handles, "Out of memory.", TSS2_ESYS_RC_MEMORY);

      /* Retrieve the poll handles */
      r = Tss2_Tcti_GetPollHandles(tcti_context, *handles, count);
      return_if_error(r, "Error getting poll handles.");
      return r;
  }

  /** Set the timeout of Esys asynchronous functions.
   *
   * Sets the timeout for the _finish() functions in the asynchronous versions of
   * the Esys commands.
   * @param esys_context [in] The ESYS_CONTEXT.
   * @param timeout [in] The timeout in ms or -1 to block indefinately.
   * @retval TSS2_RC_SUCCESS on Success.
   * @retval TSS2_ESYS_RC_BAD_REFERENCE if esysContext is NULL.
   */
  TSS2_RC
  Esys_SetTimeout(ESYS_CONTEXT * esys_context, int32_t timeout)
  {
      ESYS_ASSERT_NON_NULL(esys_context);
      esys_context->timeout = timeout;
      return TSS2_RC_SUCCESS;
  }

  /** Helper function that returns sys contest from the give esys context.
   *
   * Function returns sys contest from the give esys context.
   * @param esys_context [in] ESYS context.
   * @param sys_context [out] SYS context.
   * @retval TSS2_RC_SUCCESS on Success.
   * @retval TSS2_ESYS_RC_BAD_REFERENCE if esys_context of sys_context are NULL.
   */
  TSS2_RC
  Esys_GetSysContext(ESYS_CONTEXT *esys_context, TSS2_SYS_CONTEXT **sys_context)
  {
      if (esys_context == NULL || sys_context == NULL)
          return TSS2_ESYS_RC_BAD_REFERENCE;

      *sys_context = esys_context->sys;

      return TSS2_RC_SUCCESS;
  }

  /** Set Crypto Callbacks
   *
   * This is an advanced functionality that should be used with caution and by those
   * who know exactly what they are doing. This function provides the ability to set
   * and restore to the original state, the cryptographic callbacks that ESAPI
   * uses internally. This is useful for custom builds where runtime configurable
   * cryptography is beneficial over a configure time, --with-crypto=<ossl|mbed>
   * backend.
   *
   * @param[in] esysContext The ESYS_CONTEXT.
   * @param[in] callbacks The user define crypto callbacks or NULL for a reset to the
   *   ./configure time state.
   * @retval TSS2_ESYS_RC_BAD_REFERENCE is esysContext is NULL.
   * @retval TSS2_TSS2_ESYS_RC_CALLBACK_NULL if a required callback pointer is NULL.
   * @retval USER_DEFINED user defined errors if the user callback fails.
   * @note If ./configure --with-crypto=none, ESAPI functions that need crypto will
   * fail with TSS2_TSS2_ESYS_RC_CALLBACK_NULL until the application registers
   * callbacks. Under the same scenario, It will also fail if the application resets
   * the state back to the original state.
   */
  TSS2_RC
  Esys_SetCryptoCallbacks(
      ESYS_CONTEXT *esysContext,
      ESYS_CRYPTO_CALLBACKS *callbacks)
  {
      LOG_TRACE("context=%p, callbacks=%p",
                esysContext, callbacks);

      /* Check context, sequence correctness and set state to error for now */
      if (esysContext == NULL) {
          LOG_ERROR("esyscontext is NULL.");
          return TSS2_ESYS_RC_BAD_REFERENCE;
      }

      return iesys_initialize_crypto_backend(&esysContext->crypto_backend, callbacks);
  }

  ESYS_TR
  Esys_GetCryptoCallbacks(
      ESYS_CONTEXT *esysContext,
      ESYS_CRYPTO_CALLBACKS *callbacks)
  {
      LOG_TRACE("context=%p, callbacks=%p",
                esysContext, callbacks);

      if (esysContext == NULL || callbacks == NULL) {
          LOG_ERROR("esyscontext or callbacks is NULL.");
          return TSS2_ESYS_RC_BAD_REFERENCE;
      }

      *callbacks = esysContext->crypto_backend;

      return TSS2_RC_SUCCESS;
  }
  ```,
)


#pagebreak()

#print-index(
  row-gutter: 0.5em,
  sorted: "up",
  outlined: true,
  title: "Acronyms",
  // title: "Abbreviations",
)


#pagebreak()

#bibliography(
  (
    "references/references.bib",
    "references/references.yml",
    "references/other-refs.bib",
  ),
  style: "ieee",
  title: "References",
)

