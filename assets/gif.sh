#!/bin/bash

# Exit on error
set -e

SCALE=480   # Output width (height auto-scaled)
FPS=15      # Frame rate for the GIF

echo "🎞️ Converting all .mp4 files in this directory to high-quality GIFs..."

for INPUT in *.mp4; do
  # Skip if no .mp4 files found
  [ -e "$INPUT" ] || { echo "No .mp4 files found."; exit 1; }

  BASENAME="${INPUT%.*}"
  PALETTE="$BASENAME-palette.png"
  OUTPUT="$BASENAME.gif"

  echo "🎨 Generating palette for $INPUT..."
  ffmpeg -y -i "$INPUT" -vf "fps=$FPS,scale=$SCALE:-1:flags=lanczos,palettegen" "$PALETTE"

  echo "🖼️ Creating high-quality GIF $OUTPUT..."
  ffmpeg -y -i "$INPUT" -i "$PALETTE" -filter_complex "fps=$FPS,scale=$SCALE:-1:flags=lanczos[x];[x][1:v]paletteuse" "$OUTPUT"

  echo "🧹 Cleaning up palette..."
  rm "$PALETTE"
done

echo "✅ All done!"