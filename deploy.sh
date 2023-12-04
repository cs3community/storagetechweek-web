#!/bin/bash

set -e
set -x

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

rm -rf public
git clone git@github.com:cs3community/storagetechweek2024 public
hugo
#cp CNAME public
cd public

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git add --all .
git commit -m "$msg"

# Push source and build repos.
git push origin main

# Come Back up to the Project Root
cd ..
