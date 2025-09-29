#!/bin/bash

# Cleanup Temp Files Script
# Deletes temporary files to free up space.

echo "Starting system cleanup..."

# Remove common temp files
rm -rf /tmp/*

# Remove cache (Linux user cache)
rm -rf ~/.cache/*

# Clear apt cache (Debian/Ubuntu)
sudo apt-get clean

echo "System cleanup completed!"

