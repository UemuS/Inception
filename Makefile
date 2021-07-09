DOCKER_COMPOSE = docker-compose
DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml

all:	up
up:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d --build
down:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down
start:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) start
stop:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop
ps:
	$(DOCKER_COMPSOE) -f $(DOCKER_COMPOSE_FILE) ps

re: all

.PHONY: all up down start stop
