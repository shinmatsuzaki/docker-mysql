## Use bash syntax
SHELL := /bin/bash

all:
		docker-compose up --build -d mysql

build:
		docker-compose build

ssh:
		docker exec -it mysql bash

ps:
		docker-compose ps && echo ""
		docker ps

clean:
		docker-compose down
