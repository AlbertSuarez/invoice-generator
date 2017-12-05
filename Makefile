all: pdf/invoice.pdf

pdf/invoice.pdf: src/invoice.tex
	mkdir -p pdf
	pdflatex -output-directory=pdf src/invoice.tex
