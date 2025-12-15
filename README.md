# MP3 Recorder & Player

A simple set of Bash scripts to record system audio and play MP3 collections using VLC.

## Features

- **mp3rec**: Record system audio (e.g., from browser, music apps) and save as MP3
  - Automatic fade-in/fade-out (2 seconds each)
  - Automatic filename sanitization (removes illegal characters)
  - 192kbps MP3 encoding
  
- **mp3play**: Launch VLC with shuffled playlist of all MP3s

## Requirements

- `ffmpeg` with `libmp3lame` support
- `ffprobe`
- `vlc`
- `pulseaudio`
- `bc` (for duration calculations)

## Installation

1. Clone this repository
2. Make scripts executable:
```bash
chmod +x mp3rec mp3play.sh
```

3. Create symbolic links for easy access:
```bash
ln -s /home/elliot/Repos/04-mp3-downloader/mp3rec ~/bin/mp3rec
ln -s /home/elliot/Repos/04-mp3-downloader/mp3play.sh ~/bin/mp3play
```

## Usage

### Recording Audio

```bash
mp3rec
```

Press `q` to stop recording, then enter a song name. The MP3 will be saved to `/home/elliot/Dropbox/mp3s/`.

### Playing MP3s

```bash
mp3play
```

Launches VLC with all MP3s from the configured directory in shuffled order.

## Configuration

Edit the scripts to change:
- `OUTPUT_DIR`: Where MP3s are saved (default: `/home/elliot/Dropbox/mp3s`)
- `MONITOR_SOURCE`: PulseAudio monitor source for recording
- Bitrate, fade duration, etc.

## License

MIT
