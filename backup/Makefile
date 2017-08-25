pjName := cfx.coffe-dva

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-p 3080:80 \
		-p 3088:8080 \
		-p 3000:8000 \
		-v $$(pwd):/root/${pjName} \
		mooxe/node \
		/bin/bash
