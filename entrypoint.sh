#!/bin/bash

if [ "$SERVER_NAME" = "first-app" ] ; then
    echo "Running start"
    npm run start
elif [ "$SERVER_NAME" = "second-app" ] ; then
    echo "Running dev"
    npm run start:second-app
else
    echo "Running default"
    npm run start
fi
