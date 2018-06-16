#!/bin/bash

#
# Copy the slides and the exercise files referenced from the slides from the
# master branch to the gh-pages branch to make them accessible at
# http://jdleesmiller.github.io/latex-course/...
#

if ! git diff-index --quiet HEAD --; then
  echo "local changes -- please commit all local changes and untracked files"
  exit
fi

set -ex
shopt -s dotglob

LANGUAGES="en fr"

# build / bundle files that we need to put on the website
for language in $LANGUAGES; do
  cd "$language"
  make latex-course.tgz
  cd ..
done

# stage the website in the deploy directory
rm -rf deploy
mkdir deploy
cd deploy

for language in $LANGUAGES; do
  mkdir "$language"
  cd "$language"
  mv "../../$language/latex-course.tgz" .
  tar xzf latex-course.tgz
  rm latex-course.tgz
  cd ..
done

echo '<html><head><title>latex-course</title></head><body><a href="https://github.com/jdleesmiller/latex-course">Please see repository.</a></body></html>' > index.html
echo '.*.swp' > .gitignore

cd ..


# destroy current content of the gh-pages branch
git checkout gh-pages
git rm -rf .
for language in $LANGUAGES; do
  rm -rf "$language"
done
mv deploy/* .
rmdir deploy
git add .
git commit -am "deploy-to-gh-pages"
git push origin --all
git checkout master
