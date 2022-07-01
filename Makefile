DOCKER_IMG=freke/docker_alpine_doxygen
DOCKER=podman
ifeq (, $(shell which $(DOCKER)))
	DOCKER=docker
endif

build:
	$(DOCKER) build -t $(DOCKER_IMG) .

publish:
	$(DOCKER) tag $(DOCKER_IMG) docker.io/$(DOCKER_IMG)
	$(DOCKER) login docker.io
	$(DOCKER) push docker.io/$(DOCKER_IMG)