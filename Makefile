ARTIFACTS := *.aux *.synctex* *.log \
	     *.f* *.out
TEX_ARTIF := tex/*/*.aux tex/*/*.synctex* tex/*/*.log \
	     tex/*/*.f* tex/*/*.out

TEX	  := 

all: clean compile
.PHONY: all

clean:
	@rm -v $(TEX_ARTIF) || true

compile:
	make -C tex/physics