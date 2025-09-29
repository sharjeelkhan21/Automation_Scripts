#!/bin/bash
# Deletes log files older than 7 days

LOG_DIR="/var/log"
find $LOG_DIR -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo "Old logs cleaned from $LOG_DIR"

