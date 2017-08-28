story_book:
	rm -rf ./.storybook
	mkdir ./.storybook
	coffee -c -b -o ./.storybook ./node_modules/cfx.simple-build-tool/storybook 

server_storybook:
	start-storybook -p 8000 -s public
