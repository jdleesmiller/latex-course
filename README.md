latex-course
============

Slides for an introductory course on LaTeX. The slides and their LaTeX source
code are provided in [this github repository](https://github.com/jdleesmiller/latex-course) under a permissive MIT license.

The aim is to get students writing in LaTeX as quickly as possible. The material is presented as a set of examples, and broader concepts and techniques are explained as they arise. Each part includes exercises that can be completed on [writeLaTeX](https://www.writelatex.com), the free online LaTeX editor, so you don't have to worry about getting LaTeX and related tools installed on everyone's computers.

These slides were originally used to deliver two two-hour workshops, but there is probably enough material for three workshops, so there are three parts:

1. [The Basics](http://jdleesmiller.github.io/latex-course/en/part1.pdf): ideas, syntax, equations, environments, packages

1. [Structed Documents &
More](http://jdleesmiller.github.io/latex-course/en/part2.pdf): titles, sections, cross-references, figures, tables, bibliographies.

1. [Not Just Papers: Presentations & More](http://jdleesmiller.github.io/latex-course/en/part3.pdf): recap exercise, presentations with beamer, drawings with
tikz.

Feel free to use however you like --- contributions welcome!

Development
-----------

You may need to install some extra LaTeX packages and system packages in order
to build the slides yourself.

1. The [minted package](http://www.ctan.org/pkg/minted) provides syntax
highlighting. It is installed by default in recent versions of TeX Live.

1. The minted package calls out to the
[pygments syntax highlighter](http://pygments.org/), which is written in python.
The relevant package is python-pygments in Debian / Ubuntu
(`sudo apt-get install python-pygments`).

1. There is a simple `Makefile` that manages the build. To use it, you'll
probably need to be on Linux, and you will need `make`. 

The slides include links to exercises that open in writeLaTeX. The exercise
source files are hosted on github. If you want to use exercise files in another
location, you can [fork](https://help.github.com/articles/fork-a-repo) this
github repository and then change the `\fileuri` macro in `preamble.tex`:
```
\newcommand{\fileuri}{https://raw.github.com/jdleesmiller/latex-course/master/en}
```
so that instead of pointing to `jdleesmiller/latex-course`, it points to
`your-github-user-name/latex-course`. Then, once you've pushed your changed
exercise files to github, the slides will load them up in writeLaTeX.

The `deploy-to-gh-pages.sh` script builds the slides using the Makefile and
copies the slides over to the `gh-pages` branch, which is available at
`https://jdlm.info/latex-course` thanks to
[github pages](http://pages.github.com/).

License
-------

The slides and source are released under the MIT license. See the LICENSE file.

Credits
-------

* Diana A -- found that exercise links had broken
* Sana A -- pointed out an error in part 1
* Andy Roberts -- the chick(en) image is from [one of his articles](http://www.andy-roberts.net/writing/latex/importing_images)
* Ruby Trinh -- for organising the original short courses
