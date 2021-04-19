#!/bin/bash
git checkout main
npm version patch -m 'deploying %s to production'
git push -u origin main
git branch -D production
git checkout -b production
sed -i "s/\/build/#\/build/gi" .gitignore
npm run build
git add /build
git commit -m 'build'
git push -f -u origin production
git checkout main
