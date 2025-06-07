#import "templates/template1.typ": *
// During development of a template, set the above line to whatever you want.
// The build script will use sed to edit this line to import each template.
#show: conf.with(
  title: "{{TITLE}}",
  subtitle: "A TCG Ipsum Specification",
  doctype: "Specification",
  status: "Published",
  version: "Version 184",
  date: "June 6, 2025",
  year: "2025",
)

#pagebreak()

#heading("Disclaimers, Notices, and License Terms", level: 1, numbering: none, outlined: false)

THIS SPECIFICATION IS PROVIDED “AS IS” WITH NO WARRANTIES WHATSOEVER, INCLUDING ANY WARRANTY OF MERCHANTABILITY, NONINFRINGEMENT, FITNESS FOR ANY PARTICULAR PURPOSE, OR ANY WARRANTY OTHERWISE ARISING OUT OF ANY PROPOSAL, SPECIFICATION OR SAMPLE.

Without limitation, TCG disclaims all liability, including liability for infringement of any proprietary rights, relating to use of information in this specification and to the implementation of this specification, and TCG disclaims all liability for cost of procurement of substitute goods or services, lost profits, loss of use, loss of data or any incidental, consequential, direct, indirect, or special damages, whether under contract, tort, warranty or otherwise, arising in any way out of use or reliance upon this specification or any information herein.

This document is copyrighted by Trusted Computing Group (TCG), and no license, express or implied, is granted herein other than as follows: You may not copy or reproduce the document or distribute it to others without written permission from TCG, except that you may freely do so for the purposes of (a) examining or implementing TCG specifications or (b) developing, testing, or promoting information technology standards and best practices, so long as you distribute the document with these disclaimers, notices, and license terms.
Contact the Trusted Computing Group at www.trustedcomputinggroup.org for information on specification licensing through membership agreements.
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

#pagebreak()

= Introduction
Critical dolor sit amet systems have an occasional need to verify the consecteturs. One typical technique for this is called consectetur attestation. This document provides definitions and requirements for consectetur attestation in the PC Client and Datacenter environments.

= Scope

== In Scope

Consecteturs that form part of a computer network or enterprise environment.

== Out of Scope

Air-gapped consecteturs, non-consectutor amets.

== Trusted Computing Group

Trusted Computing Group (TCG)'s logo is depicted in the below figure:

#figure(
  image("architecture.drawio.png", width: 60%),
  caption: [
    Consectetur Attestation
  ],
)

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

  Which is pretty neat if you think about it. Duis aute irure dolor in repudiation in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Exception sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur attesting elit, sed do eiusmod tamper evident ut labore et dolore _magna_ aliqua.

  #figure(
    table(
      columns: (0.5fr, 0.5fr),
      inset: 10pt,
      align: horizon,
      table.header(
        [*Can you*],
        [*Believe It*],
      ),

      [ It ], [ Even ],
      [ Has ], [ A Table ],
    ),
    caption: [
      An Informative Table
    ],
  )

])

Stuff after the big informative.

== Math

In case you forgot:

$ sum_(k=1)^n k = (n(n+1)) / 2 $
