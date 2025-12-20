#!/usr/bin/env bash

set -e

KEY="$1"
TITLE=""

case $KEY in 
  ce) TITLE="gravity-energy-and-cosmological-equilibrium" ;;
  et) TITLE="gravity-energy-and-planetary-growth" ;;
  ps) TITLE="planetary-interiors-as-evolving-systems" ;;
  sw) TITLE="mass-as-confined-light" ;;
esac

if [[ -z "$TITLE" ]]; then
  echo "Invalid gateway key: $KEY" >&2
  exit 1
fi

echo "$KEY: $TITLE"

cd src
pdflatex gateway-$KEY
biber gateway-$KEY
pdflatex gateway-$KEY
pdflatex gateway-$KEY

mkdir -p ../gateways
mv gateway-$KEY.pdf ../gateways/$TITLE.pdf
