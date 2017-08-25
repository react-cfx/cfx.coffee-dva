clean:
	rm -rf ./dist
	rm -rf ./index.js

build:
	coffee -c -b -o ./dist ./src
	coffee -c -b ./index.coffee > ./index.js
	sed -i -e 's/src/dist/g' ./index.js

rebuild: clean
	make build
