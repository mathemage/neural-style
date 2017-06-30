#!/usr/bin/env bash
#DEFAULT_FILEDIR="/home/mathemage/Downloads/a-star-team/png/"
DEFAULT_FILEDIR="./invoices"
CONTENT_FILE=${1:-$DEFAULT_FILEDIR/content.png}
STYLE_FILE=${2:-$DEFAULT_FILEDIR/style.png}
OUTPUT_FILE=${3:-$DEFAULT_FILEDIR/invoice-transferred.png}
ITERATIONS=5

COMMAND="python neural_style.py --content $CONTENT_FILE --styles $STYLE_FILE --output $OUTPUT_FILE \
--iterations $ITERATIONS"
$COMMAND
