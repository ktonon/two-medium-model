#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Compile .erd sources to body.tex
bash "$SCRIPT_DIR/compile.sh"

# Build PDF from template
cd "$SCRIPT_DIR/../src"
pdflatex templates/pdf
biber pdf
pdflatex templates/pdf
pdflatex templates/pdf
mv pdf.pdf two-medium-model.pdf
