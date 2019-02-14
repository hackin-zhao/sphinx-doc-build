## keenon_ros_build docker makefile

build:
	docker build --rm --force-rm -t ros_wiki_build .

run:
	docker run --rm ros_wiki_build

test:
	docker run --rm=true -i -t ros_wiki_build /bin/bash
