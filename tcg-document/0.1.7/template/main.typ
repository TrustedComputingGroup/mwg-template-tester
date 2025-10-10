#import "@preview/tcg-document:0.1.7": tcg-doc
#import "@preview/acrostiche:0.5.2": *
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

Please note an important distinction between different sections of text
throughout this document. There are two distinctive kinds of text: *informative
  comments* and *normative statements*.

Whether a statement is normative or informative is typically
clear from context. In cases where the context does not
provide sufficient clarity, the following rules apply:

1. A statement with a capitalized RFC key word ("MUST," "MUST NOT," "REQUIRED," "SHALL," "SHALL NOT," "SHOULD,"
  "SHOULD NOT," "RECOMMENDED," "MAY," and "OPTIONAL") as in RFC 8174 is always normative.

2. Text that is delimited by horizontal rules and labeled as an informative statement, note, example, etc. is always informative.

#informative(
  kind: "Note",
  [Reach out to #link("mailto:admin@trustedcomputinggroup.org") with any questions about this document.
  ],
)

#pagebreak()

#outline()
#outline(title: "Figures", target: figure.where(kind: image))
#outline(title: "Tables", target: figure.where(kind: table))
#outline(title: "Listings", target: figure.where(kind: raw))

#pagebreak()

= Introduction
Critical dolor `text` sit amet systems have an occasional need to verify the consecteturs.
One typical technique _for_ this is *called* consectetur _*attestation*_. This document provides definitions and requirements for consectetur attestation in the PC Client and Datacenter environments.

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



= Miscellaneous

Now, let us use some abbreviations, such as #acr("DICE") and #acr("TPM").
If we use it again, like so: #acr("TPM"), it only displays the short version #cite(<rfc9684>).
Let's have some more citations @rfc9334@harry.
And some TCG specifications, too @tcg:cel-v1r041 @tcg:pclient:pfp, @tcg-key-dev-id.
And let's intermix some code, just `because` we ```c can```.


#pagebreak()

#print-index(
  row-gutter: 0.5em,
  sorted: "up",
  outlined: true,
  title: "Abbreviations",
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

