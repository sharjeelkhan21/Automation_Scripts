#!/bin/bash
echo "Generating disk usage report..."
df -h > disk_usage_$(date '+%Y-%m-%d').log
echo "Report saved as disk_usage_$(date '+%Y-%m-%d').log"

