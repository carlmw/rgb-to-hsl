
build: components index.js
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components node_modules

all:
	clear
	make clean
	make

test:
	clear
	@./node_modules/.bin/mocha \
		--require should \
		--timeout 10s \
		--slow 3s \
		--bail \
		--reporter spec

buildtest:
	clear
	make
	make test

.PHONY: clean test all maketest
