#!/usr/bin/env bash

# setup source connector
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @configs/postgresql-kf_ppob-public-phone_credit-source-connector.json

# setup sink connector
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @configs/postgresql-kf_ppob-public-phone_credit-sink-connector.json