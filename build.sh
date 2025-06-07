#!/bin/bash

# Random words for naming templates
WORDS=('Attestation' 'Based' 'Credential' 'Cryptographic' 'Device' 'Embedded' 'Engine' 'Hash' 'Identifier' 'Library' 'Measurement' 'Platform' 'Quantum' 'Root' 'Security' 'Trusted')

for TEMPLATE in ./templates/*.typ; do
    HASH=$(sha256sum $TEMPLATE | cut -c1-4)
    TITLE=""
    for (( i=0; i<${#HASH}; i++ )); do
        INDEX=$((16#${HASH:$i:1}))
        TITLE="${TITLE} ${WORDS[$INDEX]}"
    done
    # Strip leading and trailing spaces
    TITLE=$(echo ${TITLE} | awk '{$1=$1;print}')
    TEMPLATE=$(basename $TEMPLATE)
    cp tcgipsum.typ temp.typ
    sed -i "1s/\w*\.typ/${TEMPLATE}/" temp.typ
    sed -i "s/{{TITLE}}/${TITLE}/" temp.typ
    typst compile --font-path ./fonts temp.typ ${TEMPLATE%.typ}.pdf
done
