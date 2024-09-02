#!/bin/bash

# Script to generate ada code from a SVD file
# Usage: ./svd2ada_codegen.sh <svd_file> <destination_directory>

# Function to display usage information
usage() {
    echo "SVD to Ada Code Generator"
    echo ""
    echo "Usage: $0 <svd_file> <output_directory>"
    echo "  svd_file: The path to the SVD file to be processed."
    echo "  output_directory: The output directory for the generated Ada code."
    echo ""
    echo "  Example: ./svd2ada_codegen.sh ./cortex_m0.svd ./svd_src"
    exit 1
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    usage
fi

# Assign arguments to variables
SVD_FILE="$1"
DEST_DIR="$2"

# Extract the file name without the extension for the package option
FILE_NAME=$(basename "$SVD_FILE")
PACKAGE_NAME="SVD"
OPTIONS=" --package=$PACKAGE_NAME  --gen-interrupts  --no-uint-subtypes" # Add additional options as needed

# Check if the SVD file exists
if [ ! -f "$SVD_FILE" ]; then
    echo "Error: SVD file '$SVD_FILE' does not exist."
    exit 1
fi

# Check if the destination directory exists, create it if it does not
if [ ! -d "$DEST_DIR" ]; then
    echo "Warning: Destination directory '$DEST_DIR' does not exist. Creating it."
    mkdir -p "$DEST_DIR"
fi

# Call svd2ada with the provided arguments
svd2ada $OPTIONS "$SVD_FILE" --output="$DEST_DIR"

# Check if the command was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to execute svd2ada. Make sure svd2ada is in your PATH."
    exit 1
fi

echo "Execution completed successfully. Output saved to '$DEST_DIR'."