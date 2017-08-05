build/thesis.pdf: thesis.tex Source/begining.pdf Source/preamble.tex bibliography.bib $(shell find Text -type f)
	latexmk -halt-on-error -pdf -output-directory=build thesis.tex
Source/begining.pdf: Source/preamble.tex Source/begining.tex Text/abstract_en.tex Text/abstract_pl.tex
	pdflatex -halt-on-error -output-directory=Source Source/begining.tex

clean:
	rm *.blg *.brf *.synctex.gz *.bbl *.aux *.log *.out *.pdf *.fls *.fdb_latexmk  */*.aux */*.log */*.out */*.pdf */*.fls */*.fdb_latexmk */*.toc *.toc */*.brf
diff:
	latexdiff --flatten ../thesis_text_old/thesis.tex thesis.tex > diff.tex
	pdflatex -halt-on-error -output-directory=diff_build diff.tex
