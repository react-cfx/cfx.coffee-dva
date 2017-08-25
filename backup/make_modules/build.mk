clean:
	rm -rf ./src
	rm -rf ./public
	rm -rf ./.storybook

story_book:
	rm -rf ./.storybook
	mkdir ./.storybook
	./node_modules/.bin/coffee -c -b -o ./.storybook ../../storybook

server_storybook:
	./node_modules/.bin/start-storybook -p 8000 -s public

server_roadhog:
	./node_modules/.bin/roadhog server

build:
	mkdir -p ./src
	mkdir -p ./public

	if [ -d './sources/assets' ]; then \
		cp -R ./sources/assets/* ./public; \
	fi

	make .pug
	make .styl
	make .coffee
	make .js

	make .public

findPath = findPath() { \
	file_ext=$$1; \
	file_handler=$$2; \
	for filepath in `find ./sources -print | grep "$$file_ext"`; do \
		output_dir=`echo "$$filepath" | sed 's/sources/src/g' | xargs dirname`; \
		mkdir -p $$output_dir; \
		$$file_handler $$file_ext $$filepath $$output_dir; \
	done; \
}

pugHandler = pugHandler() { \
	file_ext=$$1; \
	source_path=$$2; \
	output_dir=$$3; \
	case "$$file_ext" in \
		'.pug' ) \
			./node_modules/.bin/pug -P -o $$output_dir $$source_path; \
			;; \
		'.styl' ) \
			./node_modules/.bin/stylus --out $$output_dir $$source_path; \
			;; \
		'.coffee' ) \
			./node_modules/.bin/coffee -c -b -o $$output_dir $$source_path; \
			;; \
		'.js' ) \
			cp $$source_path $$output_dir; \
			;; \
		* ) \
			exit 1; \
			;; \
	esac; \
}


.pug:
	@$(findPath); $(pugHandler); \
	findPath '.pug' pugHandler

.styl:
	@$(findPath); $(pugHandler); \
	findPath '.styl' pugHandler

.coffee:
	@$(findPath); $(pugHandler); \
	findPath '.coffee' pugHandler; \
	./node_modules/.bin/coffee -c -b -o ./src/lib/coffee-dva ../../src

.js:
	@$(findPath); $(pugHandler); \
	findPath '.js' pugHandler

.public:
	if [ -d './src/public' ]; then \
		mv ./src/public/* ./public; \
		rmdir './src/public'; \
	fi

rebuild: clean story_book
	make build
