.PHONY: help build watch

help:
	@cat $(firstword $(MAKEFILE_LIST))

build:
	npx tailwindcss -i ./src/input.css -o ./dist/output.css

watch:
	npx tailwindcss -i ./src/input.css -o ./dist/output.css --watch

clean:
	rm -rf node_modules dist
