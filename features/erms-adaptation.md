# Adapting tmm as a provisional ERMS implementation

## Goal

Analyze how the Two-Medium Model (2MM/tmm) maps onto [Emergent Rung Model Space (ERMS)](https://doi.org/10.5281/zenodo.18330730), identify where it already satisfies framework commitments, where it falls short, and produce a concrete plan for adapting the paper to serve as a provisional ERMS implementation in the sense defined by ERMS Section 9.

## Analysis

### What ERMS requires of a provisional implementation

ERMS (Section 9) defines provisional implementations as diagnostic constructions that probe the framework's internal coherence and failure modes. They are not candidate theories of nature. A provisional implementation must:

1. Realize the structural commitments (Section 3)
2. Satisfy compatibility requirements (Section 4)
3. Make its contingent choices explicit and discardable

### Mapping tmm concepts to ERMS vocabulary

| ERMS concept | tmm concept | Notes |
|---|---|---|
| Rung₀ (observable rung) | The LCM domain | The scale of light, matter, and familiar forces |
| Rung₋₁ (SUB) | The GCM domain | Sub-Planckian corpuscular flux |
| Rung₀ medium (DYNᵐᵉᵈ) | LCM | Elastic substance supporting propagation, interaction, localization |
| Rung₀ flux (DYNᶠˡᵘˣ) | Light (traveling wave packets) | Phase-locked shear and torsional oscillations in the LCM |
| Rung₀ rest (DYNʳᵉˢᵗ) | Matter (standing-wave structures) | Confined modes in the LCM |
| SUB flux (SUBᶠˡᵘˣ) | GCM corpuscles | Ultra-fast propagating modes at the sub-Planckian scale |
| Inter-rung coupling | LCM–GCM interaction | Momentum transfer through shadow mechanism |
| Rung₀ scaffolding (DYNˢᶜᵃᶠ) | Large-scale cosmic structure | Filament–void network (discussed in cosmology sections) |

### Where tmm already satisfies ERMS

**1. Rung characterization by effective medium (Commitment 3.2)**

tmm's LCM is an effective medium supporting propagation (light), interaction (forces), and localization (matter). It directly fills the medium role for Rung₀. The GCM fills the medium role for Rung₋₁ in the sense that it is a distinct dynamical substrate at a different scale.

**2. Intra-rung dynamics defined relative to medium (Commitment 3.3)**

All tmm dynamics at the observable scale — electrostatic, magnetic, nuclear, and gravitational forces — are described as distortions, compressions, or wave behaviors of the LCM. No LCM-independent dynamics exist. This satisfies the requirement that intra-rung dynamics be medium-relative.

**3. Inter-rung dynamics through mode coupling (Commitment 3.4)**

The GCM interacts with the LCM through momentum transfer (shadow mechanism): GCM corpuscles undergo slightly inelastic collisions with LCM compression regions. This is mode-mediated coupling between flux at SUB and the medium at DYN. It satisfies mandatory inter-rung coupling.

**4. Compatibility with established physics (Commitment 4.1)**

tmm explicitly aims to reproduce the empirical content of electromagnetism, gravity, nuclear physics, and QM, albeit from a different ontological basis. The paper addresses: redshift, CMB, rotation curves, AGN, matter-antimatter asymmetry, and more.

**5. Large-scale structure engagement (Section 8)**

tmm's cosmology sections directly address the filament–void network, galactic rotation curves, AGN energy cycling, cosmic jets, and void repulsion — exactly the "empirical pressure point" ERMS identifies in Section 8.3.

**6. Non-catastrophic inter-rung coupling (Open Problem 10.3)**

tmm's GCM coupling produces gravity as a subtle shadow effect rather than catastrophic dissipation. The interaction is weak (slightly inelastic), cumulative (producing macroscopic gravity from many tiny impulses), and does not produce runaway energy accumulation. This is a promising approach to ERMS's dissipation problem.

### Where tmm falls short of ERMS

**1. Only two rungs — no infinite hierarchy (Commitment 3.1)**

tmm posits exactly two media (LCM and GCM) with no account of structure beyond these. ERMS requires an infinite hierarchy extending in both directions. tmm provides no mechanism for Rung₋₂ (what constitutes the GCM corpuscles?), nor for Rung₊₁ (what uses the cosmic web as its medium?).

This is the most fundamental gap. ERMS Section 2.6 explicitly identifies this limitation of the original 2MM: "the model provided no principled structural relation between the two media beyond their interaction."

**2. No recursive medium emergence (Commitment 3.6)**

ERMS requires that each rung's medium arise from the scaffolding of the rung below: DYNᵐᵉᵈ ≡ SUBˢᶜᵃᶠ. tmm treats the LCM as effectively primitive — it is assumed to exist, not derived from GCM organization. Similarly, the GCM is assumed without derivation from a still deeper scale.

Adapting tmm would require showing how the LCM could emerge as persistent collective organization of GCM-scale dynamics.

**3. No rung invariance (Commitment 3.5)**

The LCM and GCM are qualitatively different in tmm. The LCM is an elastic continuum supporting compression, shear, and torsion. The GCM is a corpuscular flux. ERMS requires that all rungs be structurally identical when described in native units. tmm would need to demonstrate that GCM-scale physics, described in its own terms, admits the same classes of degrees of freedom as observable physics.

**4. GCM treated as externally imposed (Commitment 3.7)**

The GCM is introduced as a given — an isotropic flux of sub-Planckian corpuscles. ERMS excludes ontologically primitive media. A compliant version would need to derive the GCM flux as emergent from Rung₋₂ scaffolding.

**5. Temporal evolution under rung invariance (Commitment 4.3)**

tmm discusses cosmic-scale processes (AGN cycling, matter creation in planets) but does not analyze whether these processes remain compatible with rung-invariant dynamics under rescaling. Slow evolution at Rung₀ implies much faster evolution at SUB — is the GCM stable under such timescales?

**6. Rung-local metrology (Open Problem 10.4)**

tmm defines no operational procedure for measurements at the GCM scale, nor a conversion relation between GCM-native and LCM-native quantities. Cross-rung metrology is absent.

### Adaptation strategy

The adaptation is not about making tmm into a complete ERMS realization. Per ERMS Section 9, provisional implementations are diagnostic — their failures are informative. The strategy is to reframe tmm using ERMS vocabulary and commitments, make its contingent assumptions explicit, and identify precisely where it breaks framework constraints.

**Phase 1: Reframe (restructure the paper)**

- Adopt ERMS vocabulary throughout: rung, medium, flux, rest, scaffolding
- Explicitly identify which rung each section addresses
- Relabel LCM → Rung₀ medium, GCM → SUB flux, matter → DYN rest, light → DYN flux
- Add a section mapping tmm's architecture to ERMS structural commitments
- Add a section explicitly listing which commitments are satisfied, which are violated, and which are open

**Phase 2: Extend (address the gaps where possible)**

- **Rung invariance argument**: Analyze whether GCM-scale physics, described in native units, could support the same mode structure (compression, shear, torsion, standing waves). The corpuscular GCM flux could itself be wave packets in a deeper medium.
- **Recursive emergence sketch**: Argue that the LCM's elastic properties could in principle emerge from persistent GCM organization, analogous to how phonon-carrying media emerge from atomic lattice dynamics.
- **Upward extension**: Identify what role cosmic large-scale structure (filament–void network) plays as DYN scaffolding, and what Rung₊₁ dynamics would look like.
- **Metrological relations**: Define how GCM-native measurements (corpuscle spacing, transit time) relate to LCM-native measurements (wavelength, frequency).

**Phase 3: Diagnose (document where it breaks)**

- Catalog the specific points where tmm cannot satisfy ERMS constraints
- Distinguish implementation-specific failures from potential framework failures
- Identify which gaps are addressable with further work vs. which suggest structural inadequacy

### Key open questions for the adaptation

1. Can the corpuscular GCM be reinterpreted as flux in a deeper medium, making it rung-invariant?
2. Can LCM elastic properties be derived from GCM collective organization rather than assumed?
3. Does the cosmic web satisfy the requirements of DYN scaffolding (persistence, connectivity, support for Rung₊₁ propagation)?
4. Is the LCM–GCM coupling form invariant under rung shifting, or is it specific to this pair of scales?
5. How does tmm's shadow-gravity mechanism scale under the fixed rung-to-rung relation?

## Implementation Notes

This feature analyzes the relationship between tmm and ERMS. Actual paper changes will be tracked as separate work items once the analysis is reviewed.

## Verification

- Analysis reviewed for accuracy against both papers
- Mapping table verified against ERMS Section 7 vocabulary
- Gap list verified against ERMS Section 3 structural commitments
- Adaptation strategy verified against ERMS Section 9 (role of provisional implementations)
