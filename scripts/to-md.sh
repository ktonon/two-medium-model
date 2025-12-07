#!/usr/bin/env bash

set -e

cd src
pandoc -f latex -t markdown md.tex -o doc.md --verbose

MD_HEADER="# Two Medium Model (2MM)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17843932.svg)](https://doi.org/10.5281/zenodo.17843932)
"

{ printf "%s\n" "$MD_HEADER"; cat doc.md; } > ../README.md
rm doc.md
