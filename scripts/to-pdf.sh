#!/usr/bin/env bash

set -e

cd src
pdflatex pdf.tex
mv pdf.pdf two-medium-model.pdf

pdflatex gateway-standing-waves
biber gateway-standing-waves
pdflatex gateway-standing-waves
pdflatex gateway-standing-waves

pdflatex gateway-expansion
biber gateway-expansion
pdflatex gateway-expansion
pdflatex gateway-expansion

mkdir -p ../gateways
mv gateway-standing-waves.pdf ../gateways/mass-as-confined-light.pdf
mv gateway-expansion.pdf ../gateways/expansion.pdf
