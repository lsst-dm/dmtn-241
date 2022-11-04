DOCNAME = C24

tex = $(filter-out $(wildcard *acronyms.tex) , $(wildcard *.tex))

export TEXMFHOME ?= lsst-texmf/texmf

#asp tex is a bit odd so latexml fails ..
$(DOCNAME).pdf: $(tex) C24.bib authors.tex
	latex $(DOCNAME)
	bibtex $(DOCNAME)
	latex $(DOCNAME)
	latex $(DOCNAME)
	dvipdfm $(DOCNAME)
	dvipdf $(DOCNAME)

authors.tex:  authors.yaml
	python3 $(TEXMFHOME)/../bin/db2authors.py --mode adass > authors.tex

.PHONY: clean
clean:
	latexmk -c
	rm -f $(DOCNAME).bbl
	rm -f $(DOCNAME).pdf
	rm -f authors.tex
