#!/bin/bash
git checkout main
npm version patch -m 'deploying %s to production'
git push -u origin main
git branch -D production
git checkout -b production
npm run build
mv out docs
git add docs
git commit -m 'build'
git push -f -u origin production
rm -rf docs
git checkout main
