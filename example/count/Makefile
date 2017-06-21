clean:
	rm -rf ./public
	rm -rf ./src

build:
	mkdir -p ./public
	mkdir -p ./src
	./node_modules/.bin/pug -P -o ./public ./sources
	./node_modules/.bin/coffee -c -b -o ./src ./sources

rebuild: clean
	make build

server:
	./node_modules/.bin/roadhog server
