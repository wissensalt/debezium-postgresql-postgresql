#!/usr/bin/env bash

# setup source connector
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @configs/debezium-kf_ppob-source-connector.json

# setup source connector
#curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @configs/debezium-kf_ppob-sink-connector.json