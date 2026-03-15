# Rewrite tmm using verso paper writer

## Goal

Rewrite the Two-Medium Model paper using the [verso](../../../verso) paper writer tool. This serves two purposes:
1. Modernize the tmm build pipeline around a structured authoring format
2. Provide real-world feedback to guide verso's development

## Plan

- Convert all LaTeX content sections to `.verso` format
- Build pipeline: `verso build` reads `.verso.jsonc` config, compiles all papers to PDF via temp build directory
- Convert gateway papers to `.verso` format
- Use `verso init` / `verso build` / `verso check` as the sole build toolchain

## Implementation Notes

### What worked well
- **Prose passthrough**: verso treats unrecognized text as plain prose, so all LaTeX commands (\cite, \textbf, \emph, \hyperref, \begin{itemize}, etc.) pass through to the compiled output unchanged.
- **Section headings**: Clean `#`/`##`/`###` syntax replaces verbose `\section{}`/`\subsection{}`/`\subsubsection{}` commands.
- **Config-driven builds**: `.verso.jsonc` declares all papers and output directory; `verso build` with no args builds everything.
- **Dependency-aware watch**: `verso build --watch` and `verso check --watch` only rebuild papers whose `:include` dependencies changed.

### Major changes delivered
1. **erd → verso rebrand**: Full rename across both repos (crate names, binary, VS Code extension, file extensions)
2. **Unified command suite**: Replaced 4 separate binaries with `verso {check,build,clean,init,repl,lsp}`
3. **Config file**: `.verso.jsonc` with JSON Schema validation, auto-stamped `verso` version
4. **Gateway papers**: Converted 4 LaTeX gateway papers to `.verso` format
5. **File layout**: All `.verso` files moved to `src/` alongside `references.bib`
6. **Watch flag**: `-w` flag on `check` and `build` replaces dedicated `watch` subcommand
7. **Build pipeline**: Temp build directory (`/tmp/verso-build/`) with bib file copying
8. **VS Code extension**: Updated for Light theme compatibility, local schema file

### Architecture

```
src/
  paper.verso             # Main paper
  gateway-*.verso         # Gateway papers (4)
  references.bib          # Bibliography database
  forces/                 # Section subdirectories with .verso files
  matter/
  cosmology/
  relativity-qm/
  templates/pdf.tex       # LaTeX wrapper
.verso.jsonc              # Project config (papers, outputDirectory)
verso.schema.json         # JSON Schema (auto-installed by verso)
```

## Verification

```bash
verso check    # verify all papers from config
verso build    # produces build/*.pdf
```

All tests and lint pass in both repos.
