#!/bin/bash

set -e

if [ $1 == "yes" ]; then
    vsce package
    filelist=(`ls *.vsix`)
    file=$(realpath "${PWD}/${filelist}")
    echo "::notice ::Generating a VSIX file at ${file}"
    echo "::set-output name=vsix_path::${file}"
fi
vsce publish -p $2


