#!/bin/bash
if [ ! -f "config.tex" ] || [ "conf.json" -nt "config.tex" ] ; then
    python build.py
fi
pdflatex --shell-escape lab.tex