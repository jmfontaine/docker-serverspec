.PHONY: build run push usage
.DEFAULT: usage

TAG = dev

usage:
	@echo ""
	@echo "make build          Build Docker image"
	@echo "make push           Publish image to Docker Hub"
	@echo "make run            Run a Docker container from the image"
	@echo ""

build:
	@docker build -t jmfontaine/serverspec:$(TAG) .

push:
	@docker push jmfontaine/serverspec:$(TAG)

run:
	@docker run --rm -it jmfontaine/serverspec:$(TAG)
