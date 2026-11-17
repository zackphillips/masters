#!/usr/bin/env bash
# Same engine as CI (.github/workflows/build-thesis.yml); falls back to pdflatex + bibtex.
set -euo pipefail
cd "$(dirname "$0")"
DOC=Phillips_mastersThesis
if command -v tectonic >/dev/null; then
  tectonic "$DOC.tex"
else
  pdflatex "$DOC" && bibtex "$DOC" && pdflatex "$DOC" && pdflatex "$DOC"
fi
