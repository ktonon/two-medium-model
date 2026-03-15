#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SRC_DIR="$SCRIPT_DIR/../src"

verso compile "$SRC_DIR/verso/paper.verso" -o "$SRC_DIR/paper.tex"

echo "wrote $SRC_DIR/paper.tex"
