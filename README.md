# Hasura graphql engine Docker template

## Run graphql server
```shell
docker-compose up
```

## Graphql endpoint
```text
http://<base_url>/v1/graphql
```
(e.g.)   
local:
http://localhost:8080/v1/graphql  
prod:
https://<YOUR-SERVER-URL>/v1/graphql

## Open console
```shell
cd hasura/
make console
```

now console is running on **http://localhost:9695/**

## Commands
migration
```shell
cd hasura/
make migrate
```
seeding
```shell
cd hasura/
make seed
```

## Enable auto migration
1. use the certain image
```text
hasura/graphql-engine:v2.7.0.cli-migrations-v3
```

2. mount migrations/ and metadata/ on specific directly
```dockerfile
# Dockerfile

COPY ./migrations /hasura-migrations
COPY ./metadata /hasura-metadata
```
Hasura automatically detects files in hasura-migrations and hasura-metadata, and apply migrations on starting the server.
