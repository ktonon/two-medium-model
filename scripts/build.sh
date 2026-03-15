#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SRC_DIR="$SCRIPT_DIR/../src"

verso build "$SRC_DIR/verso/paper.verso" -o "$SRC_DIR/two-medium-model.pdf"
