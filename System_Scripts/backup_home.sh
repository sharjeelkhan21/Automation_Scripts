#!/bin/bash
echo "Creating backup of home directory..."
tar -czf home_backup_$(date '+%Y-%m-%d').tar.gz ~/
echo "Backup created: home_backup_$(date '+%Y-%m-%d').tar.gz"

