To take container down and remove stopped containers
	docker-compose -f postgres-web.yml down

To just stop container
	docker-compose -f postgres-web.yml stop


To put container up
	docker-compose -f postgres-web.yml up -d




To get container IPAddress
	docker inspect CONTAINER_ID | grep IPAddress
