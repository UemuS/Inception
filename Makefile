DOCKER_COMPOSE = docker-compose
DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml
var = $(docker volume ls -q)
all:	up
up:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up --build -d
down:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down -v
start:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) start
stop:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop
ps:
	$(DOCKER_COMPSOE) -f $(DOCKER_COMPOSE_FILE) ps

yes:
	docker system prune -fa
delvol:
	docker volume prune -f
delcon:
	docker rm -f $(docker ps -a -q)
delfile:
	rm -rf /home/yihssan/data

re: all

delet: yes delcon delfile

.PHONY: all up down start stopdocker rm -f $(docker ps -a -q)