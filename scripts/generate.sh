#!/bin/bash

tables=(
    "age"
    "bidi-class"
    "bidi-mirroring-glyph"
    "case-folding-simple"
    "case-mapping"
    "general-category"
    "grapheme-cluster-break"
    "jamo-short-name"
    "joining-type"
    "names"
    "perl-word"
    "property-bool"
    "property-names"
    "property-values"
    "script"
    "script-extension"
    "sentence-break"
    "word-break"
)

for name in ${tables[@]}
do
  ucd-generate ${name} ./tables > ./src/${name//-/_}.rs
done
