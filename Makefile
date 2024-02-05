VERSION=latest
WD=$(shell pwd)
IMAGE=leocbs/github-pages-gem:$(VERSION)


image:
	docker build -t $(IMAGE) .

server: image
	test -d "${SITE}" || \
		(echo -E "specify SITE e.g.: SITE=/path/to/site make server"; exit 1) && \
	docker run --rm -it \
		-p 4000:4000 \
		-u `id -u`:`id -g` \
		-v ${PWD}:/src/gh/pages-gem \
		-v `realpath ${SITE}`:/src/site \
		-w /src/site \
		${IMAGE}