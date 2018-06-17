all: part1.pdf part2.pdf part3.pdf

#
# Part 1
#
part1.pdf: part1.tex preamble.tex
	xelatex -shell-escape part1
	xelatex -shell-escape part1

#
# Part 2
#
part2.pdf: part2.tex preamble.tex structure-title.pdf structure-sections.pdf structure-crossref.pdf media-graphics.pdf bib-example.pdf structure-exercise-solution.pdf
	xelatex -shell-escape part2
	xelatex -shell-escape part2

structure-title.pdf: structure-title.tex
	xelatex structure-title

structure-sections.pdf: structure-sections.tex
	xelatex structure-sections

structure-crossref.pdf: structure-crossref.tex
	xelatex structure-crossref
	xelatex structure-crossref

structure-exercise-solution.pdf: structure-exercise-solution.tex
	xelatex structure-exercise-solution
	xelatex structure-exercise-solution
	xelatex structure-exercise-solution

media-graphics.pdf: media-graphics.tex
	xelatex media-graphics
	xelatex media-graphics

bib-example.pdf: bib-example.tex bib-example.bib
	xelatex bib-example
	bibtex bib-example
	xelatex bib-example
	xelatex bib-example

#
# Part 3
#
part3.pdf: part3.tex preamble.tex recap-structure.pdf recap-exercise.pdf recap-exercise-solution.pdf beamer-minimal.pdf beamer-theme.pdf beamer-exercise.pdf beamer-exercise-solution.pdf
	xelatex -shell-escape part3
	xelatex -shell-escape part3

recap-exercise.pdf: recap-exercise.tex
	xelatex recap-exercise

recap-exercise-solution.pdf: recap-exercise-solution.tex
	xelatex recap-exercise-solution

recap-structure.pdf: recap-structure.tex
	xelatex recap-structure

beamer-minimal.pdf: beamer-minimal.tex
	xelatex beamer-minimal

beamer-theme.pdf: beamer-theme.tex
	xelatex beamer-theme

beamer-exercise.pdf: beamer-exercise.tex
	xelatex beamer-exercise

beamer-exercise-solution.pdf: beamer-exercise-solution.tex
	xelatex beamer-exercise-solution
	xelatex beamer-exercise-solution

latex-course.tgz: part1.pdf part2.pdf part3.pdf basics-exercise-1-solution.tex basics-exercise-1.tex basics-exercise-2-solution.tex basics-exercise-2.tex basics.tex bib-example.tex preamble.tex structure-exercise-solution.tex structure-exercise-solution.pdf structure-exercise.tex gerbil.jpg bib-exercise.bib recap-exercise.tex recap-exercise-solution.pdf beamer-minimal.tex beamer-exercise.tex beamer-exercise-solution.pdf gettysburg_graph.png
	tar czf latex-course.tgz $^

clean:
	rm -f *.log *.aux *.out *.nav *.snm *.toc *.vrb *.pyg *.bbl *.blg structure-crossref.pdf structure-sections.pdf structure-title.pdf media-graphics.pdf bib-example.pdf

clobber: clean
	rm -f part1.pdf part2.pdf part3.pdf
