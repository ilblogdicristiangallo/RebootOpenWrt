
(
  logger "Auto-reboot script (every 3 days) started"
  LAST_REBOOT_FILE="/tmp/last_reboot_day"

  while true; do
    NOW_HOUR=$(date +%H)
    NOW_MIN=$(date +%M)
    NOW_DAY=$(date +%j)  # Day of the year (001–366)

    if [ "$NOW_HOUR" = "02" ] && [ "$NOW_MIN" = "00" ]; then
      if [ ! -f "$LAST_REBOOT_FILE" ]; then
        echo "$NOW_DAY" > "$LAST_REBOOT_FILE"
        logger "Auto-reboot every 3 days (first time)"
        reboot
      else
        LAST_DAY=$(cat "$LAST_REBOOT_FILE")
        DIFF=$((NOW_DAY - LAST_DAY))
        if [ "$DIFF" -ge 3 ] || [ "$DIFF" -lt 0 ]; then
          echo "$NOW_DAY" > "$LAST_REBOOT_FILE"
          logger "Auto-reboot every 3 days (diff: $DIFF)"
          reboot
        fi
      fi
      sleep 70  # wait to avoid repeated reboots
    fi

    sleep 30
  done
) &

exit 0
