JEKYLL_VERSION=4
WD=$(shell pwd)
JEKYLL_IMAGE=leocbs/jekyll:$(JEKYLL_VERSION)


build-image:
	docker build -t $(JEKYLL_IMAGE) .

build: build-image
	docker run --rm --volume=$(WD):/srv/jekyll $(JEKYLL_IMAGE) jekyll build

run: build
	docker run --rm --volume=$(WD):/srv/jekyll -p 3000:4000 $(JEKYLL_IMAGE) jekyll serve


