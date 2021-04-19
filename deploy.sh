#!/bin/bash
git checkout main
npm version patch -m 'deploying %s to production'
git push -u origin main
git branch -D production
git checkout -b production
git push -f -u origin production
git checkout main
