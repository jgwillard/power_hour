# Power Hour Assistant

Takes a file `tracks.txt` in the format "title url", downloads them from YouTube, clips them to 70 seconds and saves the result in `clips/` directory.

## Requirements

`bash`, `python3`, and `yt-dlp` must be available in `$PATH`.

## Usage

```sh
./format.py | ./clip-youtube.sh
```
