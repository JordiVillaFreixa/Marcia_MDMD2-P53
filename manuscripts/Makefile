TEX=pdflatex
BIBTEX=bibtex
MAIN=main
PDF=$(MAIN).pdf
TEXS=$(MAIN).tex figures/q6_lie_schema.tex refs.bib

.PHONY: all pdf bib clean distclean rebuild wordcount

all: pdf

pdf: $(PDF)

$(PDF): $(TEXS)
	$(TEX) -interaction=nonstopmode $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(TEX) -interaction=nonstopmode $(MAIN).tex
	$(TEX) -interaction=nonstopmode $(MAIN).tex

bib:
	$(BIBTEX) $(MAIN)

wordcount:
	texcount -inc -sum=1 $(MAIN).tex

clean:
	rm -f $(MAIN).aux $(MAIN).bbl $(MAIN).blg $(MAIN).log $(MAIN).out

distclean: clean
	rm -f $(PDF)

rebuild: distclean pdf
