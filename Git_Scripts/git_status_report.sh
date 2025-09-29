#!/bin/bash

# Git Status Report Script
# Saves the current repo status and changes into a log file with timestamp.

echo "Generating daily Git status report..."

# Log file path (inside repo folder)
LOG_FILE="git_status_report_$(date '+%Y-%m-%d').log"

# Add timestamp header
echo "===== Git Status Report: $(date '+%Y-%m-%d %H:%M:%S') =====" > $LOG_FILE

# Save repo status
git status >> $LOG_FILE

# Save recent commits (last 5)
echo -e "\n===== Last 5 Commits =====" >> $LOG_FILE
git log -5 --oneline >> $LOG_FILE

# Save any uncommitted changes
echo -e "\n===== Uncommitted Changes =====" >> $LOG_FILE
git diff >> $LOG_FILE

echo "Report saved to $LOG_FILE"

