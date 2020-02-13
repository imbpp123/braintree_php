.PHONY: console build

console: build
	docker run -it -v="$(PWD):/braintree-php" --net="host" braintree-php /bin/bash -l -c "\
		composer install && bash"

build:
	rm -rf ./composer.lock
	docker build -t braintree-php .
