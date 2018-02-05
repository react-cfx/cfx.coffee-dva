export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk

next:
	rm -rf ./pages
	mv src pages
	next build
	next dev
