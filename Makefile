-include .env

COMPOSE_NAME ?= ps_test

export MONGO_PORT ?= 27017
export PARSE_SERVER_PORT ?= 1337
export PARSE_SERVER_APPLICATION_ID ?= parse-server-test
export PARSE_SERVER_MASTER_KEY ?= abcd1234
export PARSE_DASHBOARD_PORT ?= 4040
export PARSE_DASHBOARD_USER_ID ?= admin
export PARSE_DASHBOARD_USER_PASSWORD ?= admin

help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  start                   Start all containers"
	@echo "  stop                    Stop all containers"
	@echo "  clean                   Stop and remove persisted data"
	@echo "  logs                    View logs for all services"
	@echo "  logs service=<service>  View logs for a specific service"
	@echo "  compose cmd=<cmd>       Run any docker-compose command"

start:
	@docker-compose -p $(COMPOSE_NAME) up -d

stop:
	@docker-compose -p $(COMPOSE_NAME) down

clean:
	@docker-compose -p $(COMPOSE_NAME) down -v

logs:
	@docker-compose -p $(COMPOSE_NAME) logs -f $(service)

compose:
	docker-compose -p $(COMPOSE_NAME) $(cmd)
