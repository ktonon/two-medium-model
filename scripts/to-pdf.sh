#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Compile .verso sources to paper.tex
bash "$SCRIPT_DIR/compile.sh"

# Build PDF
cd "$SCRIPT_DIR/../src"
pdflatex paper
bibtex paper
pdflatex paper
pdflatex paper
mv paper.pdf two-medium-model.pdf
