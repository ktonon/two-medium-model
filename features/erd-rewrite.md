# Rewrite tmm using erd paper writer

## Goal

Rewrite the Two-Medium Model paper using the [erd](../../../erd) paper writer tool. This serves two purposes:
1. Modernize the tmm build pipeline around a structured authoring format
2. Provide real-world feedback to guide erd's development

## Plan

- Convert all LaTeX content sections to `.erd` format
- Build pipeline: concatenate .erd files -> erd compile -> extract body -> wrap in LaTeX template -> pdflatex + biber
- Gateway papers and README generation deferred to later phase

## Implementation Notes

### What worked well
- **Prose passthrough**: erd treats unrecognized text as plain prose, so all LaTeX commands (\cite, \textbf, \emph, \hyperref, \begin{itemize}, etc.) pass through to the compiled output unchanged. This is the key insight that makes the conversion practical.
- **Section headings**: Clean `#`/`##`/`###` syntax replaces verbose `\section{}`/`\subsection{}`/`\subsubsection{}` commands.
- **Paragraph separation**: erd uses blank lines as paragraph separators, same as LaTeX, so content structure is preserved naturally.
- **Build pipeline**: Concatenate -> compile -> strip wrapper -> template injection works cleanly.

### erd gaps discovered (feedback for erd development)

1. **No body-only compilation mode**: erd always wraps output in `\documentclass{article}...\begin{document}...\end{document}`. We have to strip this wrapper with sed. A `--body-only` or `--no-preamble` flag would be valuable.

2. **Single-file compilation only**: `erd_compile` takes one file. Multi-file papers require external concatenation. An include/import mechanism (like `\input{}` or a manifest) would help.

3. **`tex` tag wraps in math mode**: The `tex` backtick tag wraps content in `$...$`, so it's only useful for inline math LaTeX. There's no way to inject arbitrary non-math LaTeX through erd's tag system. A `raw` or `latex` tag that passes through without `$...$` wrapping would be useful.

4. **No native formatting support**: Bold, italic, emphasis, citations, cross-references, URLs, lists, block quotes, and footnotes are all absent from the .erd format. These all work via LaTeX passthrough, but native support would make the format more self-contained and enable non-LaTeX output targets.

5. **No bibliography support**: No native citation mechanism or bibliography configuration. Citations work via `\cite{}` passthrough, but erd has no awareness of them.

6. **No document metadata**: No way to specify title, author, date, abstract, or other document metadata in the .erd format. These must be handled in an external LaTeX template.

7. **No labels or cross-references**: Section labels (for TOC, hyperlinks) must be embedded as raw LaTeX in section titles, e.g., `# Title \label{foo}`. Native label support would be cleaner.

8. **No table of contents**: TOC generation depends on the LaTeX template, not the .erd source.

### Architecture

```
src/
  erd/                    # .erd source files (44 files in section subdirectories)
  templates/pdf.tex       # LaTeX wrapper (preamble, title, abstract, TOC, bibliography)
  manifest.txt            # Ordered list of .erd files
  preamble.tex            # Shared LaTeX preamble
  references.bib          # Bibliography database
scripts/
  check.sh                # erd check on all .erd files
  compile.sh              # concatenate + erd compile + extract body
  to-pdf.sh               # compile + pdflatex + biber
  build.sh                # orchestrate full build
  clean.sh                # remove build artifacts
```

## Verification

```bash
npm test       # erd check passes on all .erd files
npm run build  # produces src/two-medium-model.pdf (36 pages)
```

## Remaining work
- Convert gateway papers (ce, et, ps, sw) to .erd format
- Restore README.md generation pipeline
- Add erd claims/proofs if/when mathematical content is formalized
