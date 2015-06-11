all: part1.pdf part2.pdf part3.pdf

#
# Part 1
#
part1.pdf: part1.tex preamble.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit part1

#
# Part 2
#
part2.pdf: part2.tex preamble.tex structure-title.pdf structure-sections.pdf structure-crossref.pdf media-graphics.pdf bib-example.pdf structure-exercise-solution.pdf
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit part2

structure-title.pdf: structure-title.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit structure-title

structure-sections.pdf: structure-sections.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit structure-sections

structure-crossref.pdf: structure-crossref.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit structure-crossref
	
structure-exercise-solution.pdf: structure-exercise-solution.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit structure-exercise-solution


media-graphics.pdf: media-graphics.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit media-graphics

bib-example.pdf: bib-example.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit bib-example


#
# Part 3
#
part3.pdf: part3.tex preamble.tex recap-structure.pdf recap-exercise.pdf recap-exercise-solution.pdf beamer-minimal.pdf beamer-theme.pdf beamer-exercise.pdf beamer-exercise-solution.pdf
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit part3

recap-exercise.pdf: recap-exercise.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit recap-exercise

recap-exercise-solution.pdf: recap-exercise-solution.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit recap-exercise-solution

recap-structure.pdf: recap-structure.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit recap-structure

beamer-minimal.pdf: beamer-minimal.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit beamer-minimal

beamer-theme.pdf: beamer-theme.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit beamer-theme

beamer-exercise.pdf: beamer-exercise.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit beamer-exercise

beamer-exercise-solution.pdf: beamer-exercise-solution.tex
	latexmk -pdf -xelatex  -interaction=nonstopmode -shell-escape -synctex=1 -8bit beamer-exercise-solution

latex-course-pt-BR.tgz: part1.pdf part2.pdf part3.pdf basics-exercise-1-solution.tex basics-exercise-1.tex basics-exercise-2-solution.tex basics-exercise-2.tex basics.tex bib-example.tex preamble.tex structure-exercise-solution.tex structure-exercise-solution.pdf structure-exercise.tex big_chick.png bib-exercise.bib recap-exercise.tex recap-exercise-solution.pdf beamer-minimal.tex beamer-exercise.tex beamer-exercise-solution.pdf gettysburg_graph.png
	tar czf latex-course.tgz $^

clean:
	rm -f *.log *.aux *.out *.nav *.snm *.toc *.vrb *.pyg *.bbl *.blg structure-crossref.pdf structure-sections.pdf structure-title.pdf media-graphics.pdf bib-example.pdf

clobber: clean
	rm -f part1.pdf part2.pdf part3.pdf
