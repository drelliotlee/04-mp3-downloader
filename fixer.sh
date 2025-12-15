#!/usr/bin/env bash

INPUT_WAV="/tmp/tmp.wWwh1rbSBP.wav"
OUTPUT_DIR="/home/elliot/Music"
TITLE="I've been losing sleep / Only thing I've ever known [I can't lose you / Karmaxis]"

# Sanitize filename
SAFE_TITLE="${TITLE//\//-}"  # Replace / with -
OUTPUT_MP3="$OUTPUT_DIR/$SAFE_TITLE.mp3"

# Convert with fade effects
ffmpeg -loglevel error -y \
  -i "$INPUT_WAV" \
  -af "afade=t=in:d=2,afade=t=out:d=2" \
  -codec:a libmp3lame \
  -b:a 192k \
  "$OUTPUT_MP3"

echo "Saved to:"
echo "$OUTPUT_MP3"