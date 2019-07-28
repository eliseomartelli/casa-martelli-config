#!/bin/bash
OUTPUT="$(/bin/cat /sys/class/thermal/thermal_zone*/temp)"
/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m $(( $OUTPUT / 1000)) -t sensors/server/temperature
