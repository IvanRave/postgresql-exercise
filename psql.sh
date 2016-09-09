#! /bin/sh -e

# run it after dbserver.sh

docker run \
       -it \
       --rm \
       --link demodb:demodb \
       -v "$PWD"/src:/opt/app \
       -w /opt/app postgres:9.5.2 \
       sh -c 'PGPASSWORD=$DEMODB_ENV_POSTGRES_PASSWORD exec psql -h "$DEMODB_PORT_5432_TCP_ADDR" -p "$DEMODB_PORT_5432_TCP_PORT" -U "$DEMODB_ENV_POSTGRES_USER" -d demodb'
