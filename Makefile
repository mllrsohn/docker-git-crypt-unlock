.DEFAULT_GOAL := help

.PHONY: build
build: ## Builds the docker container
	docker build -t mllrsohn/docker-git-crypt-unlock .

.PHONY: run
run: ## Runs the container
	docker run -it mllrsohn/docker-git-crypt-unlock /bin/sh

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
