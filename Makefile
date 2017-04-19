thesis.pdf: thesis.tex Source/begining.pdf Source/preamble.tex bibliography.bib
	pdflatex -halt-on-error -output-directory=build thesis.tex
	mv build/thesis.pdf thesis.pdf
Source/begining.pdf: Source/preamble.tex Source/begining.tex
	pdflatex -halt-on-error -output-directory=Source Source/begining.tex
