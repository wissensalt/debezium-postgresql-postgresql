# debezium-postgresql-postgresql

## Target Architecture
![Alt text](screenshots/target-architecture.png?raw=true "target-architecture")

## Tech Stack
- Docker
- Postgresql
- Zookeeper
- Schema Registry (Avro)
- Kafka
- Debezium

## How to Run
```sh
# Run all docker instances
docker-compose up
```
![Alt text](screenshots/1.running-docker-containers.png?raw=true "running-docker-containers") 

```sh
# Check if debezium is UP
curl -H "Accept:application/json" localhost:8083/
```
![Alt text](screenshots/2.check-debezium-up.png?raw=true "check-debezium-up")

```sh
# Deploy all configurations when debezium is UP
sh deploy-configurations.sh
```
![Alt text](screenshots/3.run-deploy-configurations.png?raw=true "run-deploy-configurations")

```sh
# Check installed debezium connector plugins
curl -H "Accept:application/json" http://localhost:8083/connector-plugins
```
![Alt text](screenshots/4.check-installed-connector-plugins.png?raw=true "check-installed-connector-plugins")

```sh
# Check installed debezium configurations
curl -H "Accept:application/json" http://localhost:8083/connectors
```
![Alt text](screenshots/5.check-installed-debezium-configurations.png?raw=true "check-installed-debezium-configurations")

```sh
# Check installed source connector status
curl -H "Accept:application/json" http://localhost:8083/connectors/postgresql-employee-source-connector/status
```
![Alt text](screenshots/6.check-installed-source-connector.png?raw=true "check-installed-source-connector")

```sh
# Check installed sink connector status
curl -H "Accept:application/json" http://localhost:8083/connectors/postgresql-employee-sink-connector/status
```
![Alt text](screenshots/7.check-installed-sink-connector.png?raw=true "check-installed-sink-connector")

```sh
# Check if debezium topic is created 
docker-compose exec kafka /kafka/bin/kafka-topics.sh --bootstrap-server kafka:9092 --list
```
![Alt text](screenshots/8.check-topic-created-by-debezium.png?raw=true "check-topic-created-by-debezium")

### Check if target postgresql db already has content
![Alt text](screenshots/9.check-postgres-target-has-content.png?raw=true "check-postgres-target-has-content")

```sh
# Open new tab to manipulate table
docker-compose exec postgres_source env PGOPTIONS="--search_path=public" bash -c 'psql -U $POSTGRES_USER postgres'
```

### Check insert query
![Alt text](screenshots/10.check-insert-query.png?raw=true "check-insert-query")

### Check update query
![Alt text](screenshots/11.check-update-query.png?raw=true "check-update-query")

### Check delete query
![Alt text](screenshots/12.check-delete-query.png?raw=true "check-delete-query")

```sh
# Watch messages from debezium topic as Binary
docker-compose exec kafka /kafka/bin/kafka-console-consumer.sh \
    --bootstrap-server kafka:9092 \
    --from-beginning \
    --property print.key=true \
    --topic cdc.employee_db.public.resigned_employee

# Watch messages from debezium topic as Converted Avro to Json
docker run -it --rm --name avro-consumer --network=debezium-postgresql-postgresql_default \
    --link ppob_zookeeper \
    --link ppob_kafka \
    --link ppob_postgres_source \
    --link ppob_schema_registry \
    debezium/connect:0.10 \
    /kafka/bin/kafka-console-consumer.sh \
      --bootstrap-server kafka:9092 \
      --property print.key=true \
      --formatter io.confluent.kafka.formatter.AvroMessageFormatter \
      --property schema.registry.url=http://schema-registry:8081 \
      --topic cdc.employee_db.public.resigned_employee

# Terminate all docker instances
docker-compose down
```

## References
- https://github.com/YegorZaremba/sync-postgresql-with-elasticsearch-example/
- https://github.com/debezium/debezium-examples/tree/main/tutorial
- https://medium.com/dana-engineering/streaming-data-changes-in-mysql-into-elasticsearch-using-debezium-kafka-and-confluent-jdbc-sink-8890ad221ccf
- https://debezium.io/documentation/reference/stable/connectors/mysql.html
- https://debezium.io/documentation/reference/connectors/postgresql.html
- https://docs.confluent.io/debezium-connect-mysql-source/current/mysql_source_connector_config.html
- https://debezium.io/documentation/reference/0.10/configuration/avro.html
- https://debezium.io/documentation/reference/1.2/configuration/event-flattening.html