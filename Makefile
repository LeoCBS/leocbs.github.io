JEKYLL_VERSION=4
WD=$(shell pwd)
JEKYLL_IMAGE=leocbs/jekyll:$(JEKYLL_VERSION)


build-image:
	docker build -t $(JEKYLL_IMAGE) .

build:
	docker run --rm --volume=$(wd):/srv/jekyll $(JEKYLL_IMAGE) jekyll build

run: 
	docker run --rm --volume=$(wd):/srv/jekyll -p 3000:4000 $(JEKYLL_IMAGE) jekyll serve


