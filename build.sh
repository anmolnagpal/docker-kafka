#!/usr/bin/env bash

docker build -t anmolnagpal/kafka:2.0.0-alpine .

if [[ $? != 0 ]]; then
    echo "kafka alpine Build failed."
    exit 1
fi

docker push anmolnagpal/kafka:2.0.0-alpine
