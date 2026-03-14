#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_DIR="$SCRIPT_DIR/.."
SRC_DIR="$PROJECT_DIR/src"
VERSO_DIR="${VERSO_DIR:-$PROJECT_DIR/../erd}"

cargo run --release --manifest-path "$VERSO_DIR/Cargo.toml" \
  -p verso_doc --bin verso -- check "$SRC_DIR/verso/paper.verso"
