all: pdf/invoice.pdf

pdf/invoice.pdf: src/invoice.tex
	mkdir -p pdf
	pdflatex -output-directory=pdf src/invoice.tex
	rm pdf/*.aux pdf/*.log

invoices/invoice.pdf: src/invoice-edit.tex
	mkdir -p invoices
	pdflatex -output-directory=invoices src/invoice-edit.tex
	rm invoices/*.aux invoices/*.log
