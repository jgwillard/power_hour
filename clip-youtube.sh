#!/usr/bin/env bash

array=()
while IFS= read -r line; do
  array+=("$line")
done

counter=1
for clip in "${array[@]}":
do
    values=($clip)
    title="${values[0]}"
    url="${values[1]}"
    num=$(printf "%02d" ${counter})
    ffmpeg $(yt-dlp --geo-bypass -g ${url} | sed 's/^/-ss 00:00 -i /') -t 01:10 -c copy clips/${num}_${title}.mkv
    counter=$[counter + 1]
done
#ffmpeg $(youtube-dl -g 'https://www.youtube.com/watch?v=FgsIaAsNNYs' | sed 's/^/-ss 00:00 -i /') -t 01:00 -c copy out.mkv

