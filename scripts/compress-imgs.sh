#! /bin/bash

# Credit to Finn Christiansen. Compresses all images in assets/original-imgs
# and saves them in assets/imgs.
# (https://finnchristiansen.com/jekyll/how-to-optimize-images-for-jekyll-and-other-web-applications/)

# parameters for optimization
MAX_WIDTH=1920
MAX_HEIGHT=1080
COMPRESSION=80%

# parameters for folder structure
ORIGINAL_IMAGES_FOLDER="assets/original-imgs"
OUTPUT_IMAGES_FOLDER="assets/imgs"


FILES=$(find $ORIGINAL_IMAGES_FOLDER -type f)
DIRECTORIES=$(find $ORIGINAL_IMAGES_FOLDER -type d)

for source_directory in $DIRECTORIES
do
    directory=${source_directory#$ORIGINAL_IMAGES_FOLDER*}
    mkdir -p $OUTPUT_IMAGES_FOLDER$directory
done

for source_image in $FILES
do
    image=${source_image#$ORIGINAL_IMAGES_FOLDER*}
    image_name=${image%.*}
    output_image=$OUTPUT_IMAGES_FOLDER$image_name".jpg"
    echo "convert $source_image to $output_image"
    convert $source_image -resize $MAX_WIDTH'x'$MAX_HEIGHT -quality $COMPRESSION $output_image
done
