UNAME := $(shell uname)

default: dcon

dcon: docker_console

docker_console:
	docker exec -it locity_app_1 /bin/bash

clean:
	git push origin --delete gh-pages && git branch -d gh-pages

public:
	git subtree push --prefix app/dist origin gh-pages

.PHONY: public clean docker_console dcon
