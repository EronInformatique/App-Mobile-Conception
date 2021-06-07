#!/bin/bash
DATE=$(date "+%d %B %Y")
pandoc "$1" \
    -f gfm \
    --number-sections \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    -V mainfont="DejaVu Serif" \
    -V monofont="DejaVu Sans Mono" \
    -M date="$DATE" \
    -o "$2"
