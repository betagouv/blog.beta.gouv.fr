up-nginx: down-nginx
	docker-compose -f docker-compose.nginx.yml up -d
down-nginx:
	docker-compose -f docker-compose.nginx.yml down