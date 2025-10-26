# RebootOpenWrt
This shell script runs in the background on OpenWrt (e.g., ZTE MF286D) and automatically reboots the router every 3 days at 02:00 AM. It uses the day-of-year (date +%j) to track the last reboot, logs actions via logger, and ensures it doesn't reboot more than once per cycle. Designed to run via /etc/rc.local.

This shell script performs an automatic reboot of the OpenWrt router every 3 days at 02:00 AM.
It runs in the background, keeps track of the last reboot using a temporary file, and logs each action using logger.

In summary:
Runs automatically at system startup

Reboots the router every 3 days

Only triggers at 2:00 AM

Remembers the last reboot using /tmp/last_reboot_day

Logs events to the system log (logread)

HOW TO INSTALL IT VIA LUCI (Startup > rc.local)
1. Open LuCI Web Interface
Log into your OpenWrt router's web UI.

2. Go to
System → Startup

3. Click next to rc.local


# Visit my blog
https://www.ilblogdicristiangallo.com
