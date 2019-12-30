#!/bin/bash
OUTPUT_MAX="$(snmpwalk -v1 -c public $4 iso.3.6.1.2.1.43.11.1.1.8 | sed 's|.*:\ ||g')"
OUTPUT_CURR="$(snmpwalk -v1 -c public $4 iso.3.6.1.2.1.43.11.1.1.9 | sed 's|.*:\ ||g')"
BLACK=$(  echo "scale=2; $(echo -e "$OUTPUT_CURR" | sed -n '4p')/$(echo -e "$OUTPUT_MAX" | sed -n '4p')*100" | bc -l | sed 's/.0\{1,\}$//')
YELLOW=$( echo "scale=2; $(echo -e "$OUTPUT_CURR" | sed -n '3p')/$(echo -e "$OUTPUT_MAX" | sed -n '3p')*100" | bc -l | sed 's/.0\{1,\}$//')
CYAN=$(	  echo "scale=2; $(echo -e "$OUTPUT_CURR" | sed -n '2p')/$(echo -e "$OUTPUT_MAX" | sed -n '2p')*100" | bc -l | sed 's/.0\{1,\}$//')
MAGENTA=$(echo "scale=2; $(echo -e "$OUTPUT_CURR" | sed -n '1p')/$(echo -e "$OUTPUT_MAX" | sed -n '1p')*100" | bc -l | sed 's/.0\{1,\}$//')

/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m $BLACK -t   "sensors/printer/ink/black"
/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m $YELLOW -t  "sensors/printer/ink/yellow"
/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m $CYAN -t    "sensors/printer/ink/cyan"
/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m $MAGENTA -t "sensors/printer/ink/magenta"
