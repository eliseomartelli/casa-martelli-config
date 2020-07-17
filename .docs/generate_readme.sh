#!/bin/bash
COUNT=$(find $1/homeassistant/automations -type f | wc -l | xargs)
VERSION=$(cat $1/homeassistant/.HA_VERSION)
cat $1/.docs/readme_template.md |
	sed -e s/%AUTOMATIONS/$COUNT/g |
	sed -e s/%VERSION/$VERSION/g > $1/readme.md
