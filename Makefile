docker.build:
	docker compose build

docker.start:
	docker compose up -d

docker.end:
	docker compose down -v

sh.php:
	docker compose exec php-fpm sh

sh.nginx:
	docker compose exec nginx sh
