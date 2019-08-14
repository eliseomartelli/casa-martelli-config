#!/bin/bash
BASE_TOPIC="sensors/server"

CPU_TEMPERATURE=$(/bin/cat /sys/class/thermal/thermal_zone*/temp)
CPU_PERCENTAGE=$(ps aux | awk {'sum+=$3;print sum'} | tail -n 1)
MEM_PERCENTAGE=$(ps aux | awk {'sum+=$4;print sum'} | tail -n 1)

mosquitto_pub \
	-u $1 -P $2 -h $3 \
	-m "$(($CPU_TEMPERATURE / 1000))" \
	-t $BASE_TOPIC/temperature
mosquitto_pub \
	-u $1 -P $2 -h $3 \
	-m "$(echo -e "scale=2; $CPU_PERCENTAGE/2" | bc -l)" \
	-t $BASE_TOPIC/cpu
mosquitto_pub \
	-u $1 -P $2 -h $3 \
	-m "$MEM_PERCENTAGE" \
	-t $BASE_TOPIC/memory
