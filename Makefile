ARTIFACTS := *.aux *.synctex* *.log \
	     *.f* *.out
TEX_ARTIF := tex/*.aux tex/*.synctex* tex/*.log \
	     tex/*.f* tex/*.out

TEX	  := tex/physics.tex

all: clean compile
.PHONY: all

clean:
	@rm -v $(TEX_ARTIF) || true

compile:
	pdflatex $(TEX) -o physics.pdf
	@rm -v $(ARTIFACTS) || true
	mv physics.pdf tex/physics.pdf
	mv physics.toc tex/physics.toc
