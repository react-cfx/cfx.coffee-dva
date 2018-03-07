export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk

nextclean: clean
	rm -rf ./page*
	rm -rf ./.next

nextbuild: build
	cp -R ./src/pages pages
	cp -R ./src/pagelibs pagelibs
	next build

nextrebuild: nextclean nextbuild

nextdev:
	next dev

nextstart:
	next start
