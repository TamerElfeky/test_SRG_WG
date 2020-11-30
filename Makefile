
SHELL := /bin/bash 

.phony: build pull up logs destroy

all: build pull up logs 

build:
	docker-compose build

pull:
	docker-compose pull

up:
	docker-compose up -d

logs:
	docker-compose logs 


destroy:
	docker-compose down -v


test:
	for i in $$(seq 100); do curl  localhost:8080;done