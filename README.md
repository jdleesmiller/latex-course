latex-course
============

*Slides* para um curso introdutório de LaTeX. Estes *slides* e seu código-fonte em LaTeX 
são disponibilizados [neste repositóriodo github](https://github.com/lrsantos11/latex-course) sob  a permissiva licença  MIT.

O Objetivo é fazer com que estudantes comecem a escrever em LaTeX tão rápido quanto possível. O material é apresentado
como um cojunto de exemplos, e conceitos e técnicas mais avançadas são explicadas quando aparecem. Cada parte inclui exercícios
que podem ser completados no [Overleaf](https://www.overleaf.com), um editor de LaTeX *online* e gratuito, tal que
você não rprecisa se preocupar em instalar o LaTeX e suas ferramentas relacionadas no computador de todos.

Estes *slides* foram usados originalmente para um mini-curso de duas horas, mas há material suficiente para
um mini-curso com três partes, então há três partes:

1. [O básico](http://jdleesmiller.github.io/latex-course/pt-br/part1.pdf): ideias, sintaxe, equações, ambientes, pacotes

1. [Documentos extruturados  & mais](http://jdleesmiller.github.io/latex-course/pt-br/part2.pdf): títulos, seções, referências cruzadas,  figuras, tabelas, bibliografias.

1. [Não só artigos: Apresentações & Mais](http://jdleesmiller.github.io/latex-course/pt-br/part3.pdf): exercícios para lembrança, apresentações com beamer, desenhos com  tikz.

Sinta-se a vontade para usar conforme deseje --- contribuições são bem-vindas!

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

The slides include links to exercises that open in Overleaf. The exercise
source files are hosted on github. If you want to use exercise files in another
location, you can [fork](https://help.github.com/articles/fork-a-repo) this
github repository and then change the `\fileuri` macro in `preamble.tex`:
```
\newcommand{\fileuri}{https://raw.github.com/jdleesmiller/latex-course/master/en}
```
so that instead of pointing to `jdleesmiller/latex-course`, it points to
`your-github-user-name/latex-course`. Then, once you've pushed your changed
exercise files to github, the slides will load them up in Overleaf.

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
* Andy Roberts -- an earlier version of this course used an image from one of his articles
* Ruby Trinh -- for organising the original short courses
