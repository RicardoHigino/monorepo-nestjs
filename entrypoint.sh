#!/bin/bash

if [ "$SERVER_NAME" = "first-app" ] ; then
    echo "Running first-app"
    npm run start
elif [ "$SERVER_NAME" = "second-app" ] ; then
    echo "Running second-app"
    npm run start:second-app
else
    echo "No valid SERVER_NAME specified"
    exit 1
fi
