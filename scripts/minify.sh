#!/bin/bash

if [ -z $VIRTUAL_ENV ]; then
  echo Not in virtual environment. Stopping.
  exit 1
fi

mkdir -p $PROJECT_DIRECTORY/images/thumbnails

# Copy raw images to temporary directory
rm -rf $PROJECT_DIRECTORY/images/tmp/
mkdir -p $PROJECT_DIRECTORY/images/tmp/
cp $PROJECT_DIRECTORY/images/raw/* \
   $PROJECT_DIRECTORY/images/tmp

# Scale down if possible. Max width is 678px.
for photo in $(find $PROJECT_DIRECTORY/images/tmp -type f); do
  fullfile=$(basename "$photo")  # filename.extension
  fname=${fullfile%.*}  # filename
  fileextension="${photo##*.}"  # extension

  # Small width. Limit width to 680px.
  convert $photo \
    -quality 92 \
    -density 72 \
    -resize '680>' \
    -set filename:mysize \
    "%wx%h" \
    "$PROJECT_DIRECTORY/images/tmp/$fname.$fileextension"

done

# Resample images.
imageoptim --directory $PROJECT_DIRECTORY/images/tmp/

# Copy into thumbnails directory.
cp $PROJECT_DIRECTORY/images/tmp/* \
   $PROJECT_DIRECTORY/images/thumbnails

# Clean up.
rm -rf $PROJECT_DIRECTORY/images/tmp
