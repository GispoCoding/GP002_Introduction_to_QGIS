#!/usr/bin/env bash

set -e

rm -rf /out/*

Rscript -e "bookdown::render_book('/app', 'bookdown::html_book')"

mv /app/_book/* /out/
rm -r /app/_book
chmod --recursive 777 /out
