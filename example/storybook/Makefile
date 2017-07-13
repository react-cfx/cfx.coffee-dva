clean:
	rm -rf ./src
	rm -rf ./public
	rm -rf ./.storybook

story_book:
	rm -rf ./.storybook
	mkdir ./.storybook
	./node_modules/.bin/coffee -c -b -o ./.storybook ./storybook

build:
	mkdir -p ./src
	mkdir -p ./public

	cp -R ./sources/assets/* ./public

	make .pug
	make .styl
	make .coffee

.pug:
	./node_modules/.bin/pug -P -o ./public ./sources/public

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

rebuild: clean story_book
	make build

server:
	./node_modules/.bin/start-storybook -p 8000 -s public

prototype:
	rm -rf ./src ./public
	cp -R ./backup/* ./
