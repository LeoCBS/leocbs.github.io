# My blog

Blog to write notes and trying passing some knowlodge. This project use [Jekyll](https://jekyllrb.com/) to convert markdown files into HTML files and github pages to server it.

## Build and run locally

We have a Makefile that build a custom jekyll docker image with gem dependencies, build jekyll project and serve it. To run this blog locally just
run command bellow:

    SITE=/home/leonardo-borges/projects/leocbs.github.io make server

And access blog page on address http://localhost:4000