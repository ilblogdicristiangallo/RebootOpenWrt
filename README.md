# RebootOpenWrt
This shell script runs in the background on OpenWrt (e.g., ZTE MF286D) and automatically reboots the router every 3 days at 02:00 AM. It uses the day-of-year (date +%j) to track the last reboot, logs actions via logger, and ensures it doesn't reboot more than once per cycle. Designed to run via /etc/rc.local.
