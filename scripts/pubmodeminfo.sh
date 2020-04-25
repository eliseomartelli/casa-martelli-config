DATA=$(expect -c "
spawn telnet $4
expect \"login:\"
send \"$5\n\"
expect \"Password:\"
send \"$6\n\"
expect \"#\"
send \"cat /tmp/adsl/adsllog.log\n\"
expect \"#\"
send \"exit\n\"
")

PROCESSED_DATA=$(echo "$DATA" | grep "Data Rate" | sed 's|.*:\ ||g' | tr --delete "#")


/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m "$(echo "$PROCESSED_DATA" | sed -n '1p')" -t "sensors/modem/data_up"
/usr/bin/mosquitto_pub -u $1 -P $2 -h $3 -m "$(echo "$PROCESSED_DATA" | sed -n '2p')" -t "sensors/modem/data_down"
