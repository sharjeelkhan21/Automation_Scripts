#!/bin/bash

# Backup Scheduler Script
# Creates a backup of a target directory and saves it with timestamp.

# Source folder (jis folder ka backup lena hai)
SOURCE_DIR="$HOME/Documents"

# Destination folder (jahan backup save hoga)
DEST_DIR="$HOME/Backups"

# Backup filename with timestamp
FILENAME="backup_$(date '+%Y-%m-%d_%H-%M-%S').tar.gz"

# Ensure destination exists
mkdir -p $DEST_DIR

# Create backup
tar -czf $DEST_DIR/$FILENAME $SOURCE_DIR

echo "Backup of $SOURCE_DIR created at $DEST_DIR/$FILENAME"

