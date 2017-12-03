rm -rf ./_book
gitbook build
git checkout gh-pages
git pull origin gh-pages
cp -rf ./_book/* ./
git add .
git commit -m 'regenerated book automatically'
git push origin gh-pages