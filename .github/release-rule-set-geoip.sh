#!/bin/bash

set -e -o pipefail

cd rule-set-geoip
git init
git config --local user.email "github-action@users.noreply.github.com"
git config --local user.name "GitHub Action"
git remote add origin https://github-action:$GITHUB_TOKEN@github.com/malikshi/sing-box-geo.git
git branch -M rule-set-geoip
git add .
git commit -m "Update rule-set-geoip"
git push -f origin rule-set-geoip