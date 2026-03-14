#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_DIR="$SCRIPT_DIR/.."
SRC_DIR="$PROJECT_DIR/src"
ERD_DIR="${ERD_DIR:-$PROJECT_DIR/../erd}"

cargo run --release --manifest-path "$ERD_DIR/Cargo.toml" \
  -p erd_doc --bin erd_compile -- "$SRC_DIR/erd/paper.erd" -o "$SRC_DIR/paper.tex"

echo "wrote $SRC_DIR/paper.tex"
