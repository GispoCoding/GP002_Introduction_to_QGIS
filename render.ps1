docker run -it --rm -v "${pwd}/src:/app".ToLower() -v "${pwd}/out:/out".ToLower() gispo/bookdown:latest bash -c "set -e \
rm -rf /out/* \
Rscript -e \`"bookdown::render_book('/app', 'bookdown::html_book')\`" \
mv /app/_book/* /out/ && rm -r /app/_book && chmod --recursive 777 /out"
