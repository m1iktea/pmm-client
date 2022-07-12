image_name ?= pmm-client
version ?= 2.27.0
#day = $(shell date +%Y%m%d)

.PHONY: build
build:
	docker build -t mi1ktea/$(image_name):$(version) .

.PHONY: push
push:
	docker push mi1ktea/$(image_name):$(version)

.PHONY: clean
clean:
	docker system prune -a -f --volumes

all: build push
