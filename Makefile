passierschein-a38.pdf: passierschein-a38.tex
	latexmk -cd -f -lualatex -interaction=nonstopmode -synctex=1 --output-directory=__LaTeX-build.nosync -latexoption=--shell-escape passierschein-a38.tex
	mv __LaTeX-build.nosync/passierschein-a38.pdf .

passierschein-a38.png: passierschein-a38.pdf
	convert -density 300 -background white -alpha remove -alpha off passierschein-a38.pdf passierschein-a38.png

clean:
	rm -rf __LaTeX-build.nosync
	rm -f passierschein-a38.pdf
	rm -f passierschein-a38*.png

all: passierschein-a38.png passierschein-a38.pdf