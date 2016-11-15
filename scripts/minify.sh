#!/bin/bash

if [ -z $VIRTUAL_ENV ]; then
  echo "Not in virtual environment. Stopping."
  exit 1
fi

mkdir -p images/thumbnails

# Copy raw images to temporary directory
rm -rf images/tmp/
mkdir -p images/tmp/
cp images/raw/* \
   images/tmp

# Scale down if possible. Max width is 678px.
for photo in $(find images/tmp -type f); do
  fullfile=$(basename "$photo")  # filename.extension
  fname=${fullfile%.*}  # filename
  fileextension="${photo##*.}"  # extension

  # Small width. Limit width to 680px.
  convert $photo \
    -quality 92 \
    -density 72 \
    -resize '1300>' \
    -set filename:mysize \
    "%wx%h" \
    "images/tmp/$fname.$fileextension"

done

# Resample images.
imageoptim --directory images/tmp/

# Copy into thumbnails directory.
cp images/tmp/* \
   images/thumbnails

# Clean up.
rm -rf images/tmp
