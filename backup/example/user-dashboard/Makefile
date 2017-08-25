clean:
	rm -rf ./src

build:
	mkdir -p ./src
	cp -R ./sources/assets ./src

	make .pug
	make .styl
	make .coffee

buildDll:
	./node_modules/.bin/roadhog buildDll

.pug:
	./node_modules/.bin/pug -P -o ./src ./sources

.styl:
	for styl_file in `find ./sources -print | grep '.styl'`; do \
		css_dir=`echo "$$styl_file" | sed 's/sources/src/g' | xargs dirname`; \
		# echo $$styl_file; \
		# echo $$css_dir; \
		mkdir -p $$css_dir; \
		./node_modules/.bin/stylus --out $$css_dir $$styl_file; \
	done

.coffee:
	./node_modules/.bin/coffee -c -b -o ./src/lib/coffee-dva ../../src
	./node_modules/.bin/coffee -c -b -o ./src ./sources

rebuild: clean
	make build

server:
	./node_modules/.bin/roadhog server
