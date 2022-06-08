#!/bin/zsh

echo "compiling pdf..."
pandoc --pdf-engine-opt=--enable-local-file-access -f gfm -t html5 --metadata pagetitle="cv.md" --css style.css cv.md -o cv.pdf


echo "compiling html page..."
pandoc --standalone --template template.html cv.md -o index.html

echo "completed"
