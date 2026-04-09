#!/bin/bash
# Convert SVG figures to PDF for use with pdflatex
# Requires Inkscape (https://inkscape.org/)

FIGURES_DIR="$(dirname "$0")/figures"

for svg in "$FIGURES_DIR"/*.svg; do
    pdf="${svg%.svg}.pdf"
    echo "Converting $svg -> $pdf"
    inkscape --export-filename="$pdf" "$svg"
done

echo "Done."
