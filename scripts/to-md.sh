#!/usr/bin/env bash

set -e

cd src
pandoc \
	-f latex \
	-t markdown \
	-s md.tex \
	-o doc.md \
	--toc --toc-depth=2 \
	--verbose

MD_HEADER="# Two Medium Model (2MM)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17902892.svg)](https://doi.org/10.5281/zenodo.17902892)

The Two-Medium Model (2MM) describes the observable universe in terms of the interaction between two pervasive substrates: *(i)* the **Light-Carrying Medium (LCM)**, an elastic continuum supporting compression, shear, and torsional distortions—including the standing-wave structures associated with matter; and *(ii)* the **Gravity-Carrying Medium (GCM)**, a flux of ultra-small, ultra-fast corpuscles whose flow is partially obstructed by dense regions of the LCM, giving rise to gravitational attraction through momentum-flux shadowing.

Matter arises as standing waves in the LCM stabilized by GCM flux.
Gravity results from momentum imbalance in the GCM. Electrostatic,
electromagnetic, and nuclear binding forces all arise from the dynamic
balance maintained between the two media. Cosmological
redshift arises from the gradual, non-scattering loss of energy
from LCM travelling waves into the GCM. The CMB is the accumulated
remnant of this process in an infinite universe. The conceptual origin of 2MM
lies in the Meta Model, which proposed that two interacting substrates
are necessary to capture the richness of physical phenomena. This
framework, while qualitative, offers a physically intuitive ontology
unifying microphysics and cosmology and suggests avenues for future
formalization and testing.

# Table of Contents
"

{ printf "%s\n" "$MD_HEADER"; cat doc.md; } \
	| sed 's/{#toc-[^}]*}//g' \
	| sed -E 's/#([^{]+)\{#[^}]+\}/\1/g' \
	| sed -E 's/[$]\^([0-9])[$]/<sup>\1<\/sup>/g' \
	| sed -E 's/[-]{3}/—/g' \
	| sed -E 's/[-]{2}/–/g' \
	| sed -E 's/\$_2\$/₂/g' \
	> ../README.md
rm doc.md
