if ! git diff-index --quiet HEAD --; then
  echo "local changes -- please commit all local changes and untracked files"
  exit
fi

pushd en
make latex-course.tgz
mv latex-course.tgz /tmp
popd

git checkout gh-pages
git rm -rf .
rm -rf en
mkdir en
pushd en
tar xzf /tmp/latex-course.tgz
rm *.tgz
popd
git commit -am "deploy-to-gh-pages"
git push origin --all
