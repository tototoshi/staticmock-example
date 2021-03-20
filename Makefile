pwd := $(shell pwd)

.PHONY:\
	ci \
	shell \
	test

shell:
	docker build -t staticmock-example .
	docker run -it --rm --name staticmock-example -v $(pwd):$(pwd) -w $(pwd) staticmock-example bash

ci:
	docker build -t staticmock-example .
	docker run -it --rm --name staticmock-example -v $(pwd):$(pwd) -w $(pwd) staticmock-example \
		bash -c 'composer install && make test'

test:
	./vendor/bin/phpunit test
