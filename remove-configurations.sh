#!/usr/bin/env bash

# remove source connector
curl -i -X DELETE localhost:8083/connectors/postgresql-employee-source-connector

# remove sink connector
curl -i -X DELETE localhost:8083/connectors/postgresql-employee-sink-connector