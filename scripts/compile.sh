#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_DIR="$SCRIPT_DIR/.."
SRC_DIR="$PROJECT_DIR/src"
ERD_DIR="${ERD_DIR:-$PROJECT_DIR/../erd}"

# Concatenate all .erd files listed in manifest
COMBINED=$(mktemp /tmp/tmm-combined-XXXXXX.erd)
trap "rm -f $COMBINED" EXIT

while IFS= read -r file; do
  cat "$SRC_DIR/$file" >> "$COMBINED"
  echo "" >> "$COMBINED"
done < "$SRC_DIR/manifest.txt"

# Compile with erd
RAW=$(mktemp /tmp/tmm-raw-XXXXXX.tex)
trap "rm -f $COMBINED $RAW" EXIT

cargo run --release --manifest-path "$ERD_DIR/Cargo.toml" \
  -p erd_doc --bin erd_compile -- "$COMBINED" -o "$RAW"

# Extract body (between \begin{document} and \end{document}, exclusive)
sed -n '/^\\begin{document}$/,/^\\end{document}$/p' "$RAW" \
  | sed '1d;$d' \
  > "$SRC_DIR/body.tex"

echo "wrote $SRC_DIR/body.tex"
