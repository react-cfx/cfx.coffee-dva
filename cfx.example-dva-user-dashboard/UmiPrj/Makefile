export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk

# umiclean: clean
# 	rm -rf ./page*

# umibuild: build
# 	cp -R ./src/pages pages
# 	cp -R ./src/pagelibs pagelibs

# umirebuild: umiclean umibuild

dev:
	umi dev

dist:
	env COMPRESS=none umi build
