#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_DIR="$SCRIPT_DIR/.."
SRC_DIR="$PROJECT_DIR/src"
ERD_DIR="${ERD_DIR:-$PROJECT_DIR/../erd}"

# Collect all .erd files from manifest
FILES=()
while IFS= read -r file; do
  FILES+=("$SRC_DIR/$file")
done < "$SRC_DIR/manifest.txt"

cargo run --release --manifest-path "$ERD_DIR/Cargo.toml" \
  -p erd_doc --bin erd_check -- "${FILES[@]}"
