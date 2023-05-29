#!/bin/sh

if [ `git branch --show-current` = "main" ]; then
    rm *-sol.ipynb
    rm *\ -\ sol.ipynb
    rm pdfs/*-sol.pdf
    rm pdfs/*\ -\ sol.pdf
    rm -rf sol
    rm docker-compose.yml
    rm Dockerfile
    rm print-pdf.sh
    rm rise.css
    rm cleanup.sh
fi


