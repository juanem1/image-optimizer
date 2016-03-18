#!/bin/bash

path=$1

# Optimize JPG files
# You need to install jpgoptim (https://github.com/tjko/jpegoptim)
find $path -iname '*.jpg' | xargs /usr/local/bin/jpegoptim --max=90 --all-progressive --strip-all --strip-com --strip-exif --strip-iptc --strip-icc

# Optimize PNG files
# You need to install Optipng (http://optipng.sourceforge.net/)
find $path -iname '*.png' -print0 | xargs -n 1 -P 16 -0 /usr/local/bin/optipng -o7