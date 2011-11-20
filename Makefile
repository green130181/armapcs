TR_TEXFILES= \
	armapcs.tex context.tex keyword.tex needed.tex helloworld.tex demo.tex addon1.tex

all: pdf

pdf: armapcs.pdf
armapcs.pdf: $(TR_TEXFILES)
	rm -f *.toc
	#latex rg100
	#latex rg100
	#dvipdfm rg100
	pdflatex armapcs
	pdflatex armapcs
	
clean:
	rm -f *.toc *.aux *.exa *.log *.out *.lol *.lof *.lot *.bak *~ .*.swp *.ind *.idx *.ilg *.mpo *.mpx *.dvi *.pdf

.PHONY: psfig pdffig pack packps packpdf ps dvi all clean

