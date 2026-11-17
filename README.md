# masters

My MS thesis from the Waller Lab at UC Berkeley: *Coded Illumination Techniques for Phase Imaging and Motion Blur* (2016).

CI builds `Phillips_mastersThesis.tex` on every push to `main` and publishes it to:

- https://zackphillips.com/masters/Phillips_mastersThesis.pdf (GitHub Pages, opens inline)
- the [`latest` release](https://github.com/zackphillips/masters/releases/tag/latest) (download)

Pull requests build the PDF as a workflow artifact without publishing. `Phillips_mastersThesis_submitted.pdf` is the copy filed with the Graduate Division.

## Build locally

```bash
./compile.sh
```

Uses [Tectonic](https://tectonic-typesetting.github.io/) if installed (same engine as CI, runs BibTeX automatically), otherwise `pdflatex` + `bibtex`.
