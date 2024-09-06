cd ..
bundle exec jekyll build
git add *
git commit -m "autobatscriptdoupdateforme"
git push -u origin main
cd _posts