#!/usr/bin/env bash
LOGFILE="healthlog.txt"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
SERVICES=("nginx" "ssh")

{
  echo "=============================="
  echo "Healthcheck: $TIMESTAMP"
  echo "=============================="

  echo ""
  echo "System date and time"
  date
  echo ""

  echo "System uptime"
  uptime
  echo ""

  echo "CPU load"
  uptime | awk -F'load average:' '{ print $2 }'
  echo ""

  echo "Memory usage (in MB)"
  free -m
  echo ""

  echo "Disk usage"
  df -h
  echo ""

  echo "Top 5 memory using processes"
  ps aux --sort=-%mem | head -n 6
  echo ""

  echo "Service status"
  for s in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$s"; then
      echo "$s : running"
    else
      echo "$s : NOT running"
    fi
  done
  echo ""

  echo "Healthcheck completed at: $(date)"
  echo ""
} >> "$LOGFILE"
