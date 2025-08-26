#import "templates/eckelmeckel-04.tpl.typ": *
// During development of a template, set the above line to whatever you want.
// The build script will use sed to edit this line to import each template.
#show: tcg-doc.with(
  title: "Root Credential Platform Identifier",
  subtitle: "A TCG Ipsum Specification",
  doctype: "Specification",
  status: "Published",
  version: "Version 184",
  date: datetime.today().display("[month repr:long] [day padding:none], [year]"),
  year: datetime.today().display("[year]"),
)

#pagebreak()

#heading("Disclaimers, Notices, and License Terms", level: 1, numbering: none, outlined: false)

THIS SPECIFICATION IS PROVIDED “AS IS” WITH NO WARRANTIES WHATSOEVER, INCLUDING ANY WARRANTY OF MERCHANTABILITY, NONINFRINGEMENT, FITNESS FOR ANY PARTICULAR PURPOSE, OR ANY WARRANTY OTHERWISE ARISING OUT OF ANY PROPOSAL, SPECIFICATION OR SAMPLE.

Without limitation, TCG disclaims all liability, including liability for infringement of any proprietary rights, relating to use of information in this specification and to the implementation of this specification, and TCG disclaims all liability for cost of procurement of substitute goods or services, lost profits, loss of use, loss of data or any incidental, consequential, direct, indirect, or special damages, whether under contract, tort, warranty or otherwise, arising in any way out of use or reliance upon this specification or any information herein.

This document is copyrighted by Trusted Computing Group (TCG), and no license, express or implied, is granted herein other than as follows: You may not copy or reproduce the document or distribute it to others without written permission from TCG, except that you may freely do so for the purposes of (a) examining or implementing TCG specifications or (b) developing, testing, or promoting information technology standards and best practices, so long as you distribute the document with these disclaimers, notices, and license terms.
Contact the Trusted Computing Group at #link("https://www.trustedcomputinggroup.org/")[www.trustedcomputinggroup.org] for information on specification licensing through membership agreements.
Any marks and brands contained herein are the property of their respective owners.

#heading("Statement Types", level: 1, numbering: none, outlined: false)

Please note an important distinction between different sections of text
throughout this document. There are two distinctive kinds of text: *informative
  comments* and *normative statements*.

Whether a statement is normative or informative is typically
clear from context. In cases where the context does not
provide sufficient clarity, the following rules apply:

1. A statement with a capitalized RFC key word ("MUST," "MUST NOT," "REQUIRED," "SHALL," "SHALL NOT," "SHOULD,"
  "SHOULD NOT," "RECOMMENDED," "MAY," and "OPTIONAL") as in RFC 8174 is always normative.

2. Text that is delimited by horizontal rules and labeled as an informative statement, note, example, etc. is always informative.

#informative-eckelmeckel-01(
  kind: "Note",
  [Reach out to #link("mailto:admin@trustedcomputinggroup.org") with any questions about this document.
  ],
)

#pagebreak()

#outline()
#outline(title: "Figures", target: figure.where(kind: image))
#outline(title: "Tables", target: figure.where(kind: table))

#pagebreak()

= Introduction
Critical dolor sit amet systems have an occasional need to verify the consecteturs. One typical technique for this is called consectetur attestation. This document provides definitions and requirements for consectetur attestation in the PC Client and Datacenter environments.

= Scope

== In Scope

Consecteturs that form part of a computer network or enterprise environment.

== Out of Scope

Air-gapped consecteturs, non-consectutor amets.

== Trusted Computing Group

Trusted Computing Group (TCG)'s logo is _not_ depicted in the below figure (@fig:not-the-tcg-logo):

#figure(
  image("architecture.drawio.png", width: 60%),
  caption: [
    Consectetur Attestation
  ],
) <fig:not-the-tcg-logo>

=== Lorem Ipsum Workgroup

The Lorem Ipsum workgroup defines the consectutor and other ipsum attestation scenarios at their bimonthly tea parties.

#informative-eckelmeckel-01(
  kind: "Note",
  [
    By "bimonthly" we mean that the workgroup meets every other month.
  ],
)

= A Lot of Text

Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur. Excepteur sint verified boot cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id PCR laborum.

When providing evidence about a consectutor, the Attesting Environment SHALL furnish the dolor.

#informative-eckelmeckel-01([
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
    caption: [
      An Informative Table
    ],
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
    table-toprule,
    table.header(
      repeat: true,
      table-header-text("Date"),
      table-header-text(
        [Event -- may include symbols and special characters: #sym.suit #sym.copyleft #sym.copyright #sym.lambda],
      ),
    ),
    table-midrule,

    // 2021
    [2022-04-09], [Kickoff (virtual)],
    [2022-04-14 -- 2021-04-15], [Conference Trustworthy Systems],
    [2022-11-11], [Workshop Threat and Risk Assessment],
    [2022-12-02], [Preparation for Conference Talk],

    // 2023
    table-midrule,
    //
    [2023-01-14], [Internal Workshop ML],
    [2023-04-03], [Talk from Jane Doe],
    [2023-05-08 -- 2023-05-09], [Hackathon Attestation],
    [2023-11-13 -- 2023-11-14], [Team Event],

    // 2024
    table-midrule,
    //
    [2024-02-21], [4th Digitaler Cooperation Workshop],
    [2024-04-09 -- 2024-04-11], [Embedded World 2024],
    [2024-06-04 -- 2024-06-05], [Trustworthy Electronics Days 2024],
    [2024-06-17 -- 2024-06-18], [Project Meeting (Alaska)],
    [2025-01-15], [Final Workshop: Theory of Everything],
    table-bottomrule,
  ),
  caption: [Project-related events],
) <tab:events>



#pagebreak()

== Informative Text

=== Style 1

#informative-eckelmeckel-01([This text fits into a single line.])

Some text.

#informative-eckelmeckel-01([
  This text fits into multiple lines.

  ==== It even has a subheading

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  #horizontalrule

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


=== Style 2
// #captioned-rule(
//   text([\u{1f6c8} ~ ] + "Start of Informative Text ", font: font-head-face, weight: "bold", baseline: -0.1em),
//   solid: false,
//   stroke: 1.5pt,
//   box-radius: 1em,
//   box-inset: 0.3em,
//   box-align: left,
//   box-left-margin: 1em,
// )

// #captioned-rule(
//   text([\u{1f6c8} ~ ] + "Start of Informative Text ", font: font-head-face, weight: "bold", baseline: -0.1em),
//   solid: false,
//   stroke: 0.2em,
//   box-radius: 1em,
//   box-inset: 0.3em,
//   box-align: left,
//   box-left-margin: 1em,
// )

// #captioned-rule(
//   text([#text(baseline: -0.00em, [\u{1f6c8}]) ~ ] + "Start of Informative Text", font: font-head-face, weight: "bold"),
//   solid: false,
//   stroke: 0.2em,
//   box-radius: 1em,
//   box-align: left,
//   box-left-margin: 1em,
// )

// #captioned-rule(
//   align(horizon, [#text([\u{24d8} ~ Start of Informative Text (Test)], font: font-head-face, weight: "bold")]),
//   solid: false,
//   stroke: 0.2em,
//   box-radius: 1em,
//   box-align: left,
//   box-left-margin: 1em,
// )

// #captioned-rule(
//   align(horizon, [#text([\u{1f6c8} \u{24d8} ~ Start of Informative Text (Test)], font: font-head-face, weight: "bold")]),
//   solid: false,
//   stroke: 0.2em,
//   box-radius: 1em,
//   box-align: left,
//   box-left-margin: 1em,
// )

#informative-eckelmeckel-02([This text fits into a single line.])

Test

#rule-rounded(invert-curve-direction: true)

Test

#informative-eckelmeckel-02([
  #curve(
    fill: none,
    stroke: (paint: tcg-color-black, thickness: 1pt, cap: "round"),
    curve.move((0%, 0%)),
    curve.line((100%, 0%)),
  )

  #curve(
    fill: none,
    stroke: (paint: tcg-color-black, thickness: 1pt, cap: "round"),
    curve.move((0%, 5pt)),
    curve.cubic(none, (0%, 0%), (1%, 0%)),
    // curve.move((1%, 0%)),
    curve.line((99%, 0pt)),
    curve.cubic(none, (100%, 0pt), (100%, 5pt)),
    // curve.line((100pt, 50pt)),
    // curve.cubic(none, (90pt, 0pt), (50pt, 0pt)),
    // curve.close(),
  )

  //   #curve(
  //   fill: none,
  //   stroke: (paint: tcg-color-black, thickness: 1pt, cap: "round"),
  //   curve.move((0pt, 5pt)),
  //   curve.cubic(none, (0pt, 0pt), (1%, 0pt)),
  //   curve.line((99%, 0pt)),
  //   curve.cubic(none, (99%, 0pt), (100%, 5pt)),
  //   curve.close()

  //   // curve.line((100pt, 50pt)),
  //   // curve.cubic(none, (90pt, 0pt), (50pt, 0pt)),
  //   // curve.close(),
  // )


  This text fits into multiple lines.

  ==== It even has a subheading

  Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud encryption ullamco laboris nisi ut aliquip ex ea commodo consequat.
  Duis aute irure dolor in reprehenderit in voluptate hash esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id laborum.

  #horizontalrule

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



= Code

Here is some code.



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
```
