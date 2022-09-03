
VERSION=0.0.6

.PHONY: build
build:
	docker buildx build	\
		--platform linux/amd64	\
		--platform linux/arm64	\
		--tag 0bel1sk/open-ports:$(VERSION)	\
		--tag 0bel1sk/open-ports:latest	\
		--output=type=registry \
		.