#!/usr/bin/env bash
set -euxo pipefail
rm -rf venv
virtualenv venv
venv/bin/pip install -r requirements.txt
bin/qmk compile -kb keebio/bdn9 -km idk
