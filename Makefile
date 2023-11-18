SHELL ::= /bin/bash
OBJECTS = *.{out,pdf,log,fls,fdb*,aux,synctex*}

.PHONY: all clean

all: resume.pdf

resume.pdf: resume.tex *.tex *.sty sections/*.tex
	pdflatex $<

clean:
	rm -vrf ${OBJECTS}
