#!/bin/bash
WAIT=${1:-60}
INTERVAL=${2:-60}
echo "You have an hour to debug this build"
echo 'do "touch /tmp/continue" to stop the wait'
for i in $(seq 1 $WAIT) 
do  echo $i/$WAIT, sleeping for $INTERVAL
    sleep $INTERVAL
    if test -e /tmp/continue
    then break
    fi
done
