#!/bin/sh

set -e

sh -c """
if [$1]
then
    sh -c "vsce package"
    filelist=(`ls ./*.vsix'`)
    file=`realpath "$PWD/$filelist[*]"`
    echo "::notice ::Generating a VSIX file at $file"
    echo "::set-output name=vsix_path::$file"
fi

vsce publish -p $2
"""
