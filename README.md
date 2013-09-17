latex-course
============

An interactive introduction to LaTeX using writeLaTeX.

Dependencies
------------

You may need to install some extra LaTeX packages and system packages in order
to build the slides.

1. The [minted package](http://www.ctan.org/pkg/minted) provides syntax
highlighting. It is installed by default in recent versions of TeX Live.

2. The minted package calls out to the [pygments syntax highlighter](http://pygments.org/), which is written in python.

3. There is a simple `Makefile` that manages the build. To use it, you'll
probably need to be on Linux, and you will need `make`. 

