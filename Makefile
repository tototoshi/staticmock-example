pwd := $(shell pwd)
image_name := staticmock-example
container_name := staticmock-example
composer := ./composer

.PHONY:\
	ci \
	shell \
	test

shell:
	docker build -t $(image_name) .
	docker run -it --rm --name $(container_name) -v $(pwd):$(pwd) -w $(pwd) $(image_name) bash

ci:
	docker build -t staticmock-example .
	docker run --rm -v $(pwd):$(pwd) -w $(pwd) $(image_name) \
		bash -c '$(composer) install && make test'

test:
	$(composer) exec phpunit test
