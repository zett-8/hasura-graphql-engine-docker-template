# Hasura graphql engine Docker template

## Run graphql server
```shell
docker-compose up
```

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

## Open console
```shell
cd hasura/
make console
```

now console is running on **http://localhost:9695/**


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
