#!/bin/bash

path=$1

find $path -iname '*.jpg' | xargs /usr/local/bin/jpegoptim --max=90 --all-progressive --strip-all --strip-com --strip-exif --strip-iptc --strip-icc