#!/bin/bash
rm -rf public
npm install &&
bundle install &&
bundle update &&
npm run build &&
./generate-static.sh &&
bundle exec jekyll build
