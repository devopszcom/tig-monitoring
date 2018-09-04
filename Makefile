
all: up
up:
	docker-compose up -d
rm: 
	docker-compose down -v
watch:
	watch -n 1 curl -s -X GET "localhost:9200/_cat/indices?v"


# stack
stack-deploy:
	docker stack deploy --compose-file=docker-compose.yml monitoring

stack-rm:
	docker stack rm monitoring

