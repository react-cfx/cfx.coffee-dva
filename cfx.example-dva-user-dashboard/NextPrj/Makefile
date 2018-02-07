export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk

nextbuild: build
	cp -R src/pages pages
	mkdir -p pagelibs
	cp -R src/pagelibs/* pagelibs
	next build

nextrebuild:
	rm -rf ./pages
	rm -rf ./pagelibs
	make nextbuild

nextdev:
	next dev

nextstart:
	next start
