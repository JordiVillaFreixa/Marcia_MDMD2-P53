# Manuscripts

This folder contains an ACS/JCIM-style application note proposal for the workflow present in this repository.

Files:

- `main.tex`: manuscript draft using the local `achemso` class for `jcisd8`.
- `figures/q6_lie_schema.tex`: TikZ source for the general Q6/LIE workflow figure used as Figure 1.
- `refs.bib`: bibliography for the current draft.
- `submission_readiness.md`: journal-fit notes and remaining metadata placeholders.
- `word_count_statement.md`: approximate word-count statement for the corresponding author.

Build locally from this folder with:

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```
