# Get to the Travis build directory, configure git and clone the repo
cd $HOME
git config --global user.email "jfoster@austin.utexas.edu"
git config --global user.name "John Foster"
git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/johntfoster/johntfoster-professional-website gh-pages

# Commit and Push the Changes
cd gh-pages
cp -Rf $HOME/johntfoster/johntfoster-professional-website/output .
git add -A
git commit -m "Travis CI autocommit from travis build $TRAVIS_BUILD_NUMBER"
git push -fq origin gh-pages > /dev/null
