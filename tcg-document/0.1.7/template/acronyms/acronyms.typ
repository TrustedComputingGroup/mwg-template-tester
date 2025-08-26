#import "@preview/acrostiche:0.5.2": *

/*
URL: https://typst.app/universe/package/acrostiche/

Functions Summary:
  #init-acronyms(…) 	Initializes the acronyms by defining them in a dictionary where the keys are acronyms and the values are definitions.
  #acr(…) 	Prints the acronym with its definition on the first call, then just the acronym in subsequent calls.
  #acrpl(…) 	Prints the plural version of the acronym. Uses plural definition if available, otherwise adds an ‘s’ to the acronym.
  #acrfull(…) 	Displays the full (long) version of the acronym without affecting the state or tracking its usage.
  #acrfullpl(…) 	Displays the full plural version of the acronym without affecting the state or tracking its usage.
  #reset-acronym(…) 	Resets a single acronym so the next usage will include its definition again.
  #reset-all-acronyms() 	Resets all acronyms so the next usage will include their definitions again.
  #print-index(…) 	Prints an index of all acronyms used, with customizable heading level, order, and display parameters.
  #display-def(…) 	Displays the definition of an acronym. Use plural: true to display the plural version of the definition.
  racr, raacr, acrf, acrfpl 	Shortcuts names for respectively reset-acronym, reset-all-acronyms, acrfull, and acrfullpl.

Shortcut names inspired by the acronym package for LaTeX by Tobias Oetiker:
  #ac(…) 	        Same as acr, display an acronym.
  #acf(…) 	      Same as acrfull, display the long version of an acronym.
  #acfp(…)       	Same as acf but plural.
  #acs(…) 	      Display the short version of the acronym, does not update the acronym state.
  #acsp(…)      	Same as acs but plural.
  #acused(…) 	    Mark an acronym as used without printing anything.
  #acresetall(…) 	Reset all acronyms.
*/


#init-acronyms((
  // "CBOR": (
  //   short: "CBOR",
  //   long: "Concise Binary Object Representation",
  //   short-pl: "CBORs",
  //   long-pl: "Concise Binary Object Representations",
  // ),
  "CBOR": "Concise Binary Object Representation",
  "CDDL": "Concise Data Definition Language",
  "CEL": "Canonical Event Log",
  "COT": "Chain of Trust",
  "COT-SE": "Chain of Trust Secure Element",
  "CHARRA": "Challenge-Response based Remote Attestation with TPM 2.0",
  "DICE": "Device Identifier Composition Engine",
  "HW-COT": "Hardware-basierte Chain of Trust",
  "IETF": "Internet Engineering Task Force",
  "IIoT": "Industrial Internet of Things",
  "IoMT": "Internet of Medical Things",
  "IoT": "Internet of Things",
  "JSON": "JavaScript Object Notation",
  "PoC": "Proof-of-Concept",
  "POK": "Physical(ly) Obfuscated Key",
  "PUF": "Physical(ly) Unclonable Function",
  "PQC": "Post-Quantum Cryptography",
  "RATS": "Remote Attestation Procedures",
  "SE": "Secure Element",
  "TCG": "Trusted Computing Group",
  "TEE": "Trusted Execution Environment",
  "TPM": "Trusted Platform Module",
  "UID": "Unique Identifier",
  "VE-ASCOT": "Advanced Security for the Chain of Trust",
))
