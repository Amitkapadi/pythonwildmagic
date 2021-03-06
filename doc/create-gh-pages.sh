# Shell script to build gh-pages.

# Start at the root directory.
cd ..

# Switch to gh-pages branch and start afresh.
git checkout gh-pages
rm -rf *

# Switch to master branch (Sphinx build needs the entries listed.)
SOURCES="doc tool test config.py"
git checkout master $SOURCES
git reset HEAD

# Run code analysis.
tool/create-xml.py analysis/xml `./config.py`
tool/parse-xml.py analysis/cpp.names analysis/xml
tool/compare.py analysis/cpp.names

# Build the docs.
tool/create-docs.py analysis/cpp.names doc/ ./

# Remove the directories (from master branch, and analysis) 
# that had been needed for building docs.
rm -rf $SOURCES analysis

# Move html content and clean up.
mv -fv html/* ./
rm -rf html
rm -rf doctrees

# Add everything to gh-pages.
git add .

# Remove deleted files.
#git rm

# Commit with comment referencing latest master branch commit.
#git commit -m "Updated gh-pages for `git log master -1 | head -1`"

# Push.
#git push origin gh-pages
