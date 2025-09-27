#!/bin/bash

COMPOSE_PATH="/compose_file/path"
LOG_FILE="/var/log/check.log"
STATUS=$(docker inspect --format '{{ .State.Status }}' CONTAINER_NAME)

    if  [ "$STATUS" =  "running" ]
    then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Nextcloud Stack is OK!" >> $LOG_FILE
    else
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Nextcloud Stack is Restarted!" >> $LOG_FILE
        cd $COMPOSE_PATH || exit
        docker compose down
        docker compose up -d
    fi
