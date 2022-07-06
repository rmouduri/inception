all: up

up:
	@cd srcs/
	@systemctl stop mysql.service
	@sudo mkdir -p /home/rmouduri/data/wordpress
	@sudo mkdir -p /home/rmouduri/data/mysql
	@docker-compose -f ./srcs/docker-compose.yml up -d --build
	@cd ../

down:
	@cp srcs/.env .
	@docker-compose -f ./srcs/docker-compose.yml down
	@rm .env

.PHONY: up down
