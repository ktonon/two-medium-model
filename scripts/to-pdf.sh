#!/usr/bin/env bash

set -e

cd src
pdflatex pdf.tex
mv pdf.pdf two-medium-model.pdf
