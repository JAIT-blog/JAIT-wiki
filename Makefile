# Author: Jeremy of JAIT Corporation

default: stop build start

stop:
	@docker-compose stop; true

build:
	@docker build -t jait_express ./back
	@docker build -t jait_httpd ./front

start:
	@docker-compose up -d
	@echo Go on http://0.0.0.0:8080
