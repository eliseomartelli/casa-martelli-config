#!/bin/bash -l
OUTPUT="$(cat /sys/class/thermal/thermal_zone*/temp)"
/usr/bin/mosquitto_pub -u $MQTT_USER -P $MQTT_PASSWORD -h $MQTT_HOST -m $(( $OUTPUT / 1000)) -t sensors/server/temperature
