#!/bin/bash

fs_is_file() { [ -f "$1" ] && echo 1 || echo 0; }
fs_is_dir() { [ -d "$1" ] && echo 1 || echo 0; }
fs_is_symlink() { [ -L "$1" ] && echo 1 || echo 0; }

fs_file_ext() { f=`basename "$1"`; echo "${f##*.}"; }
fs_file_name() { echo `basename "$1"`; }
fs_file_name_no_ext() { f=`basename "$1"`; echo "${f%.*}"; }

fs_list_files() { find "$1" -maxdepth 1 -type f -print0; }
fs_list_files_r() { find "$1" -type f -print0; }
fs_list_dirs() { find "$1" -mindepth 1 -maxdepth 1 -type d -print0; }
fs_list_dirs_r() { find "$1" -mindepth 1 -type d -print0; }
fs_list_all() { find "$1" -mindepth 1 -maxdepth 1 -print0; }
fs_list_all_r() { find "$1" -mindepth 1 -print0; }

fs_read_file() { cat "$1"; }
fs_write_file() { echo "$2" > "$1"; }
fs_append_file() { echo "$2" >> "$1"; }

fs_dir_remove() { rmdir "$1"; }
fs_file_remove() { rm -f "$1"; }
fs_remove_r() { rm -rf "$1"; }

# fs_is_dir /home/minhaz
# fs_is_dir /home/minhaz/desktop
# fs_is_symlink /home/minhaz/work
# fs_is_symlink /home/minhaz/download
# fs_file_ext /home/minhaz/download/SM-G313HZ.zip
# fs_file_name /home/minhaz/download/SM-G313HZ.zip
# fs_file_name_no_ext /home/minhaz/download/SM-G313HZ.zip
# fs_list_all_r /home/minhaz/ | while read -d $'\0' file; do echo "$file"; done
