# Author: Jeremy of JAIT Corporation

default: stop build start

stop:
	@docker-compose stop; true

build:
	@docker build -t jait_express ./front

start:
	@docker-compose up -d

