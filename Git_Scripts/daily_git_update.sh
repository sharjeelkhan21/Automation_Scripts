#!/bin/bash

# Daily Git Automation Script
# This script updates the repo, commits daily changes, and pushes them.

echo "Starting daily automation task..."

# Pull the latest changes
git pull origin main

# Stage all changes
git add .

# Commit with timestamp
git commit -m "Daily update on $(date '+%Y-%m-%d %H:%M:%S')"

# Push changes to remote
git push origin main

echo "Daily task completed."

