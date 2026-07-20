DOCKER_REGISTRY ?= docker.io
IMAGE           ?= bborbe/chromedp-headless-shell
PLATFORM        ?= linux/amd64
ifeq ($(VERSION),)
	VERSION := $(shell git describe --tags `git rev-list --tags --max-count=1` 2>/dev/null)
endif

.PHONY: build upload buca run

build:
	docker build --pull --platform=$(PLATFORM) -t $(DOCKER_REGISTRY)/$(IMAGE):$(VERSION) -f Dockerfile .

upload:
	docker push $(DOCKER_REGISTRY)/$(IMAGE):$(VERSION)

buca: build upload

run:
	docker run -ti -p 9222:9222 $(DOCKER_REGISTRY)/$(IMAGE):$(VERSION)
