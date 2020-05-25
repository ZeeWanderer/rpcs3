#!/bin/sh -ex
# Allow to loop over filenames with spaces
#IFS=$'\n'

# TODO: Remove dead project and object files from intermediate based on cpp files
# Wite intermediate to cache
cp -r "./intermediate" "$CCACHE_DIR"
cp -r "./lib" "$CCACHE_DIR"
#cp -r "./vs" "$CCACHE_DIR"

# Write only .bsc files to cache
#for file in $(find ./lib -type f | grep .bsc); do cp $file "$CCACHE_DIR" --parent; done
#for file in $(find ./lib -type f); do cp $file "$CCACHE_DIR" --parent; done

# Restore default behavior
#IFS=$' '
