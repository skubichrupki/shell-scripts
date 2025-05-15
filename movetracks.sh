#!/bin/bash

# make file executable
# sudo chmod +x ~/movetracks.sh

# make file available to run from any dir
# sudo mv ~/movetracks.sh /usr/local/bin/
# sudo chmod +x /usr/local/bin/movetracks

# ${#array[@]} - # gives the number of elements in array
# [@] means “all elements of the array.”

HOME_DIR="$HOME"
DOWNLOADS_DIR="$HOME/Downloads/"
TRACKS_DIR="$HOME/Downloads/tracks/"

mkdir -p "$HOME_DIR/Downloads/tracks"

# nullglob - if no files match the wildcard pattern, Bash expands it to an empty list
shopt -s nullglob
mp3_files=("$DOWNLOADS_DIR"*.mp3)
shopt -u nullglob

if [ ${#mp3_files[@]} -eq 0 ]; then
  echo "no mp3 files"
else 
  mv "${mp3_files[@]}" "$TRACKS_DIR"
  echo "${#mp3_files[@]} mp3 files moved"
fi
