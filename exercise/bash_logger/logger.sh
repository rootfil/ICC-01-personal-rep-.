#!/bin/bash
#
#
current_user=$(whoami)

read -p "Log entry: " entry

current_date=$(date +"%F %T")

echo "[$current_date] User: $current_user - Log entry: $entry" >> user_activity.log
