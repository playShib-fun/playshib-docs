# Variables
DOCKER_IMAGE_NAME := playshib-docs

# Default Docker image tag
DEFAULT_TAG := latest

# Get the Docker image tag from the environment variable, or use the default
IMAGE_TAG ?= $(DEFAULT_TAG)

get-deps:
	yarn install --ignore-scripts --frozen-lockfile

# Default target
all: get-deps build docker-build

# Docker targets
docker-build:
	docker buildx create --use
	docker buildx build --platform linux/arm64  -t $(DOCKER_IMAGE_NAME):$(IMAGE_TAG) .

docker-build-push:
	docker buildx create --use
	docker buildx build --platform linux/arm64  -t $(ECR_REGISTRY)/$(DOCKER_IMAGE_NAME):$(IMAGE_TAG)  --push .

docker-run:
	docker run -p 3000:3000 $(DOCKER_IMAGE_NAME):$(IMAGE_TAG)

docker-clean:
	docker rmi -f $(DOCKER_IMAGE_NAME):$(IMAGE_TAG)

# Help target
help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  install       Install project dependencies"
	@echo "  test          Run tests with coverage report"
	@echo "  build         Build the application"
	@echo "  docker-build  Build Docker image"
	@echo "  clean         Clean up generated files"
	@echo "  all           Install, test, build, and docker-build (default target)"
	@echo "Docker targets:"
	@echo "  docker-build  Build Docker image"
	@echo "  docker-run    Run Docker container"
	@echo "  docker-clean  Remove Docker image"