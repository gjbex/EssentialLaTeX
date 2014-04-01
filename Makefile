LATEX = pdflatex
BIBTEX = bibtex
MKIDX = makeindex

all:  latex-intro.pdf

latex-intro.pdf: typeset1 bibtex makeindex typeset2

typeset1: latex-intro.tex
	$(LATEX) $<; $(LATEX) $<

bibtex: latex-intro.aux
	$(BIBTEX) $<

makeindex: latex-intro.tex
	$(MKIDX) latex-intro

typeset2: latex-intro.tex
	$(LATEX) $<; $(LATEX) $<

clean:
	rm -f latex-intro.aux latex-intro.log latex-intro.out \
	      latex-intro.toc texput.log latex-intro.pdf \
	      latex-intro.bbl latex-intro.blg \
	      latex-intro.idx latex-intro.ilg latex-intro.ind
