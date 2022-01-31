#!/bin/bash

set -e

if [ $1 == "yes" ]; then
    vsce package
    file=file=$(realpath $(ls -t *.vsix | head -1))
    echo "::notice ::Generating a VSIX file at ${file}"
    echo "::set-output name=vsix_path::${file}"
fi
vsce publish -p $2


