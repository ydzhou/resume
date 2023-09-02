all: pdf

setup:
	brew upgrade
	brew install pandoc
	brew install mactex

pdf:
	pandoc -o resume.pdf --pdf-engine=xelatex --template=resume.template.tex resume.md

clean:
	rm resume.pdf
