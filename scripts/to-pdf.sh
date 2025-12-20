#!/usr/bin/env bash

set -e

cd src
pdflatex pdf
biber pdf
pdflatex pdf
pdflatex pdf
mv pdf.pdf two-medium-model.pdf
