#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
FILENAME=$(basename $1)
FILENAME_WITHOUT_EXT=${FILENAME%.*}
# echo $FILENAME_WITHOUT_EXT
# echo $FILENAME
~/.local/bin/pyftsubset $1 --text-file=$SCRIPT_DIR/chars.txt --layout-features='*' --flavor=woff2 --output-file=$FILENAME_WITHOUT_EXT.min.woff2
