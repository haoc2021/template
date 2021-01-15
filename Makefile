.PHONY: clean

LATEX=pdflatex
BIBTEX=bibtex
SOURCES=*.tex
REFS=*.bib
MAIN=paper

all: $(MAIN).pdf

$(MAIN).pdf: $(SOURCES) $(REFS)
	$(LATEX)  $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX)  $(MAIN)
	$(LATEX)  $(MAIN)

clean:
	$(RM) -rf *.out *.log *.pbm *.ps $(MAIN).pdf *.dvi *.blg *.aux *.4ct *.4tc *.css *.html *.idv *.lg *.xref *.tmp *.pyg 
