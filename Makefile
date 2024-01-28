
.PHONY: build

build:
	docker build . -t "rjsheperd/clojure-bb-bun:latest"

push: build
	docker push "rjsheperd/clojure-bb-bun:latest"
