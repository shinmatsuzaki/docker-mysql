## Use bash syntax
SHELL := /bin/bash

.PHONY: default
default: start

.PHONY: start
start:
		docker-compose up --build -d mysql2 ubuntu

.PHONY: build
build:
		docker-compose build

.PHONY: ssh
ssh:
		docker exec -it mysql2 bash

.PHONY: mysql
mysql:
		docker exec -it mysql2 mysql -u root -p

.PHONY: ps
ps:
		docker-compose ps && echo ""
		docker ps

.PHONY: clean
clean:
		docker-compose down
