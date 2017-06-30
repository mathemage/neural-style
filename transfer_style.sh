#!/usr/bin/env bash
DEFAULT_FILEDIR="/home/mathemage/Downloads/a-star-team/png/"
CONTENT_FILE=${1:-$DEFAULT_FILEDIR/03ab699c89aeae4bae28f06befc95a11-0.png}
STYLE_FILE=${2:-$DEFAULT_FILEDIR/02bf6d075d44b03b0650ffbaa98e2ea0-0.png}
OUTPUT_FILE=${3:-$DEFAULT_FILEDIR/invoice-transferred.png}
ITERATIONS=5

COMMAND="python neural_style.py --content $CONTENT_FILE --styles $STYLE_FILE --output $OUTPUT_FILE \
--iterations $ITERATIONS"
$COMMAND
