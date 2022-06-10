#!/bin/bash

set -e

until PGPASSWORD=postgres psql -h postgres -U "postgres" -c '\l'; do
  echo "Postgres is unavailable - sleeping"
  sleep 1
done

echo " === Postgres is up - executing command === "

exec graphql-engine serve
