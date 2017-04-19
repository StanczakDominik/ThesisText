thesis.pdf: thesis.tex Source/begining.pdf Source/preamble.tex bibliography.bib $(shell find Text -type f)
	pdflatex -halt-on-error -output-directory=build thesis.tex
	mv build/thesis.pdf thesis.pdf
Source/begining.pdf: Source/preamble.tex Source/begining.tex Text/abstract_en.tex Text/abstract_pl.tex
	pdflatex -halt-on-error -output-directory=Source Source/begining.tex

clean:
	rm *.blg *.brf *.synctex.gz *.bbl *.aux *.log *.out *.pdf *.fls *.fdb_latexmk  */*.aux */*.log */*.out */*.pdf */*.fls */*.fdb_latexmk */*.toc *.toc */*.brf
