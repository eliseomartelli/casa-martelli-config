#!/bin/bash
OUTPUT="$(snmpwalk -v1 -c public $4 iso.3.6.1.2.1.43.11.1.1.9.0 | sed 's|.*:\ ||g')"
BLACK=$(echo -e "$OUTPUT" | sed -n '1p')
YELLOW=$(echo -e "$OUTPUT" | sed -n '2p')
CYAN=$(echo -e "$OUTPUT" | sed -n '3p')
MAGENTA=$(echo -e "$OUTPUT" | sed -n '4p')

/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m $BLACK -t   "sensors/printer/ink/black"
/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m $YELLOW -t  "sensors/printer/ink/yellow"
/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m $CYAN -t    "sensors/printer/ink/cyan"
/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m $MAGENTA -t "sensors/printer/ink/magenta"
