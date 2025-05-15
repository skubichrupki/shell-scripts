#!/bin/bash

# info:
# make file available to run from any dir
# sudo mv ~/movetracks.sh /usr/local/bin/
# make file executable
# sudo chmod +x /usr/local/bin/movetracks

# ${#array[@]} - # gives the number of elements in array
# [@] means “all elements of the array.”

DOWNLOADS_DIR="$HOME/Downloads/"
TRACKS_DIR="$HOME/Music/_Serato_/Auto Import/"

# shopt enables and disables options for current shell session
# nullglob - if no files match the wildcard pattern, Bash expands it to an empty list

shopt -s nullglob # enable nulling empty assignments
mp3_files=("$DOWNLOADS_DIR"*.mp3) # get all mp3 files
shopt -u nullglob # disable nulling empty assignments

if [ ${#mp3_files[@]} -eq 0 ]; then
  echo "no mp3 files"
else 
  mv "${mp3_files[@]}" "$TRACKS_DIR"
  echo "${#mp3_files[@]} mp3 files moved"
fi