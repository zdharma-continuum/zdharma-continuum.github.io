#!/bin/bash
sh ./generate-static.sh
( cd public/assets/js; perl -i -p -e 's/zdharma.org/localhost:4000/g;' bundle.js )
bundle exec jekyll serve --config "_config.yml,_config_dev.yml" --incremental
