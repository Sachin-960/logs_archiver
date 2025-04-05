#!/bin/bash

# ✅ Set the hardcoded output directory here
OUTPUT_DIR="log_backups"

# Check if input (log dir) is provided
if [ -z "$1" ]; then
    echo "❌ Usage: $0 <log-directory>"
    exit 1
fi

LOGS_DIR="$1"

# Check if log directory exists
if [ ! -d "$LOGS_DIR" ]; then
    echo "❌ Logs directory '$LOGS_DIR' does not exist."
    exit 1
fi

# Create output directory if it doesn't exist
if [ ! -d "$OUTPUT_DIR" ]; then
    echo "📁 Output directory '$OUTPUT_DIR' does not exist. Creating it..."
    mkdir -p "$OUTPUT_DIR"
    if [ $? -ne 0 ]; then
        echo "❌ Failed to create output directory."
        exit 1
    fi
fi

# Generate archive name
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_${TIMESTAMP}.tar.gz"
FULL_PATH="${OUTPUT_DIR%/}/$ARCHIVE_NAME"

# Compress
echo "📦 Compressing '$LOGS_DIR' into '$FULL_PATH'..."
tar -czf "$FULL_PATH" "$LOGS_DIR"

# Final check
if [ $? -eq 0 ]; then
    echo "✅ Archive created successfully at: $FULL_PATH"
else
    echo "❌ Compression failed."
    exit 1
fi
