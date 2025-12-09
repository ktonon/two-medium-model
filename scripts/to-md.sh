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

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17861252.svg)](https://doi.org/10.5281/zenodo.17861252)

The Two-Medium Model (2MM) proposes that the universe is built from the
interaction of two fundamental substrates: *(i)* the **Light-Carrying
Medium (LCM)**, a compressible elastic medium that supports transverse
waves (light), longitudinal modes, and the standing-wave structures we
call matter; and *(ii)* the **Gravity-Carrying Medium (GCM)**, a
pervasive flux of ultra-small, ultra-fast corpuscles whose flow is
partially blocked by dense LCM regions, producing gravitational
attraction through flux-shadowing.

Matter arises as standing waves in the LCM stabilized by GCM flux.
Gravity results from momentum imbalance in the GCM. Quantum behavior
emerges from LCM wave dynamics constrained by ultra-fast GCM
boundary-setting. Cosmological redshift and the cosmic microwave
background (CMB) arise from energy exchanges between LCM waves and
depleted GCM flux in intergalactic voids. The conceptual origin of 2MM
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
	> ../README.md
rm doc.md
