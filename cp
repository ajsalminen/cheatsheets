# Custom cheat sheet.

# Hard link all files recursively so that the directory gets created.
cp -r -l src dest

# BTRFS linked files that have separate permissions but same content
cp --reflink src dest

# Renaming/moving files with suffixes quickly
cp /home/foo/realllylongname.cpp{,-old}