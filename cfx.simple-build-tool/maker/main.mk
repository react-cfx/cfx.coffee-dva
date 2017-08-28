clean:
	rm -rf ./src
	rm -rf ./public
	rm -rf ./.storybook

build:
	mkdir -p ./src
	mkdir -p ./public

	if [ -d './sources/assets' ]; then \
		mkdir -p ./public/assets; \
		cp -R ./sources/assets/* ./public/assets; \
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
		if [ $$file_ext = '.pug' ]; then \
			output_kw='public'; \
		else \
			output_kw='src'; \
		fi; \
		output_dir=`echo "$$filepath" | sed "s/sources/$${output_kw}/g" | xargs dirname`; \
		mkdir -p $$output_dir; \
		$$file_handler $$file_ext $$filepath $$output_dir; \
	done; \
}

extHandler = extHandler() { \
	file_ext=$$1; \
	source_path=$$2; \
	output_dir=$$3; \
	case "$$file_ext" in \
		'.pug' ) \
			pug -P -o $$output_dir $$source_path; \
			;; \
		'.styl' ) \
			stylus --out $$output_dir $$source_path; \
			;; \
		'.coffee' ) \
			coffee -c -b -o $$output_dir $$source_path; \
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
	@$(findPath); $(extHandler); \
	findPath '.pug' extHandler

.styl:
	@$(findPath); $(extHandler); \
	findPath '.styl' extHandler

.coffee:
	@$(findPath); $(extHandler); \
	findPath '.coffee' extHandler

.js:
	@$(findPath); $(extHandler); \
	findPath '.js' extHandler

.public:
	if [ -d './src/public' ]; then \
		mv ./src/public/* ./public; \
		rmdir './src/public'; \
	fi

rebuild: clean
	if [ -d './sources/stories' ]; then \
		make story_book; \
	fi
	make build
