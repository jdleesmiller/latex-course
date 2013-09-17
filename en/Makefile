all: part1.pdf part2.pdf part3.pdf

#
# Part 1
#
part1.pdf: part1.tex
	pdflatex -shell-escape part1
	pdflatex -shell-escape part1

#
# Part 2
#
part2.pdf: part2.tex structure-title.pdf structure-sections.pdf structure-crossref.pdf media-graphics.pdf bib-example.pdf
	pdflatex -shell-escape part2
	pdflatex -shell-escape part2

structure-title.pdf: structure-title.tex
	pdflatex structure-title

structure-sections.pdf: structure-sections.tex
	pdflatex structure-sections

structure-crossref.pdf: structure-crossref.tex
	pdflatex structure-crossref
	pdflatex structure-crossref

structure-exercise-solution.pdf: structure-exercise-solution.tex
	pdflatex structure-exercise-solution
	pdflatex structure-exercise-solution
	pdflatex structure-exercise-solution

media-graphics.pdf: media-graphics.tex
	pdflatex media-graphics
	pdflatex media-graphics

bib-example.pdf: bib-example.tex bib-example.bib
	pdflatex bib-example
	bibtex bib-example
	pdflatex bib-example
	pdflatex bib-example

#
# Part 3
#
part3.pdf: part3.tex recap-structure.pdf recap-exercise.pdf recap-exercise-solution.pdf beamer-minimal.pdf beamer-theme.pdf beamer-exercise.pdf beamer-exercise-solution.pdf
	pdflatex -shell-escape part3
	pdflatex -shell-escape part3

recap-exercise.pdf: recap-exercise.tex
	pdflatex recap-exercise

recap-exercise-solution.pdf: recap-exercise-solution.tex
	pdflatex recap-exercise-solution

recap-structure.pdf: recap-structure.tex
	pdflatex recap-structure

beamer-minimal.pdf: beamer-minimal.tex
	pdflatex beamer-minimal

beamer-theme.pdf: beamer-theme.tex
	pdflatex beamer-theme

beamer-exercise.pdf: beamer-exercise.tex
	pdflatex beamer-exercise

beamer-exercise-solution.pdf: beamer-exercise-solution.tex
	pdflatex beamer-exercise-solution
	pdflatex beamer-exercise-solution

# TODO need to update these rules
latex-course.tgz: all
	tar czf latex-course.tgz part1.pdf part2.pdf part3.pdf recap-exercise.tex recap-exercise-solution.pdf beamer-minimal.tex beamer-exercise.tex beamer-exercise-solution.pdf gettysburg_graph.png

clean:
	rm -f *.log *.aux *.out *.nav *.snm *.toc *.vrb *.pyg *.bbl *.blg
