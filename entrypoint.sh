#!/bin/sh -l

set -e

if [ $1 == "yes" ]; then
    vsce package
    filelist=$(ls *.vsix)
    file=$(realpath "${PWD}/${filelist}")
    fa=$(echo "${file}" | grep "No such file")
    echo "::notice ::What we found ${fa}"
    echo "::notice ::Generating a VSIX file at ${file}"
    echo "::set-output name=vsix_path::${file}"
fi
vsce publish -p $2


