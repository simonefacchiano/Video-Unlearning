#!/usr/bin/env bash

cd assets

# Exit on error
set -e

echo "Converting all .webm files in the current directory to .mp4..."

for f in *.webm; do
  # Skip if no .webm files are found
  [ -e "$f" ] || { echo "No .webm files found."; exit 1; }

  output="${f%.webm}.mp4"
  echo "Converting '$f' -> '$output'"

  ffmpeg -i "$f" -c:v libx264 -c:a aac -strict experimental "$output"
done

echo "Conversion complete."
