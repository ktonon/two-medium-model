#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
bash $SCRIPT_DIR/to-md.sh
bash $SCRIPT_DIR/to-pdf.sh
bash $SCRIPT_DIR/gateway.sh ce
bash $SCRIPT_DIR/gateway.sh et
bash $SCRIPT_DIR/gateway.sh ps
bash $SCRIPT_DIR/gateway.sh sw
