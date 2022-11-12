#!/bin/bash
while :
do
  # nc sync command here
  nextcloudcmd -u $NC_USER -p $NC_PASS /sync/data $NC_URL
  #sync every 3*60=180 seconds
  sleep $SLEEP_INTERVAL
done
