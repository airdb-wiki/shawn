.PHONY: test

all: run

run:
	hugo server --minify --theme book
wsl win windows:
	hugo server --bind=0.0.0.0 --port=1313 --minify --theme book 
sub:
	git submodule update --init
	git submodule update --remote

build:
	hugo -D --minify
