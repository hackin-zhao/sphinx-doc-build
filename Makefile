## sphinx_doc_build docker makefile

build:
	docker build --rm --force-rm -t sphinx_doc_build .

run:
	docker run --rm sphinx_doc_build

test:
	docker run --rm=true -i -t sphinx_doc_build /bin/bash
