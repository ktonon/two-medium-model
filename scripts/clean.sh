#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/../src"
rm -f body.tex
rm -f pdf.aux pdf.bbl pdf.bcf pdf.blg
rm -f pdf.log pdf.out pdf.run.xml pdf.toc
rm -f two-medium-model.pdf
