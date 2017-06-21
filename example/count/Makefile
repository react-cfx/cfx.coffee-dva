clean:
	rm -rf ./build

build:
	mkdir -p ./build/public
	mkdir -p ./build/src

	cp ./package.json ./build

	./node_modules/.bin/pug -P -o ./build/public ./src

	./node_modules/.bin/coffee -c -b -o  ./build/src/lib/coffee-dva ../../src

	./node_modules/.bin/coffee -c -b -o ./build/src ./src

rebuild: clean
	make build

server:
	bash -lc "\
		pushd ./build && \
			../node_modules/.bin/roadhog server && \
		popd \
	"
