#!/bin/sh -ex

# TODO: Remove dead project and object files from intermediate based on cpp files
# Wite intermediate to cache
cp -r "./intermediate" "$CCACHE_DIR"

# Write only .bsc files to cache
for file in $(find ./lib -type f | grep .bsc); do cp $file "$CCACHE_DIR" --parent; done
