#! /bin/sh -e

# required: docker pull postgres
# required directory: db

pth=$PWD

docker run \
	   --name demodb \
	   --restart always \
	   -e POSTGRES_PASSWORD=12344321 \
	   -e POSTGRES_USER=demouser \
	   -e POSTGRES_DB=demodb \
	   -e PGDATA=/var/lib/postgresql/data/pgdata \
	   -v $pth/db:/var/lib/postgresql/data \
	   -d \
	   postgres:9.5.2
