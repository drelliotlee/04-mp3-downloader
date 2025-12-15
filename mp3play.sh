#!/usr/bin/env bash
set -euo pipefail

MP3_DIR="/home/elliot/Dropbox/mp3s"

# Check if directory exists
if [[ ! -d "$MP3_DIR" ]]; then
    echo "Error: Directory $MP3_DIR does not exist."
    exit 1
fi

# Check if there are any MP3 files
if ! ls "$MP3_DIR"/*.mp3 >/dev/null 2>&1; then
    echo "No MP3 files found in $MP3_DIR"
    exit 1
fi

# Launch VLC with all MP3s in random order
vlc --random --playlist-autostart "$MP3_DIR"/*.mp3 &

echo "VLC started with shuffled playlist."

# ln -s /home/elliot/Repos/04-mp3-downloader/mp3play.sh ~/bin/mp3play
# above command used to place a symbolic link to this script in ~/bin for easy access