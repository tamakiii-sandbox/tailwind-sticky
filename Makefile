.PHONY: help build watch server clean

PORT_HTTP := 8888

help:
	@cat $(firstword $(MAKEFILE_LIST))

build:
	npx tailwindcss -i ./src/input.css -o ./dist/output.css

watch:
	npx tailwindcss -i ./src/input.css -o ./dist/output.css --watch --content 'src/**/*.html'

server:
	npx http-server -a 0.0.0.0 -p $(PORT_HTTP) .

clean:
	rm -rf node_modules dist
