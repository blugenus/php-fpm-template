#!/usr/bin/make

SHELL = /bin/sh

UID = $(shell id -u)
GID := $(shell id -g)

docker.build:
	UID=$(UID) GID=$(GID) docker-compose build

docker.build.no-cache:
	UID=$(UID) GID=$(GID) docker-compose build --no-cache

docker.up:
	UID=${UID} GID=${GID} docker compose up -d

docker.down:
	docker compose down -v

docker.logs:
	docker compose logs

sh.php-fpm:
	docker compose exec php-fpm sh

sh.nginx:
	docker compose exec nginx sh
