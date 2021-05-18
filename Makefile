GITBOOK_NAME=blog
DOCKER_IMAGE=edisonyao/gitbook:v0.0.1
DIST=./dist
BUILD_ENV=
PRJ_DIR = $(realpath ./)

init:
	docker run --rm -v ${PRJ_DIR}:/data/${GITBOOK_NAME} -w /data/${GITBOOK_NAME} $(BUILD_ENV) $(DOCKER_IMAGE) gitbook init

build:
	docker run --rm -v ${PRJ_DIR}:/data/${GITBOOK_NAME} -w /data/${GITBOOK_NAME} $(BUILD_ENV) $(DOCKER_IMAGE) gitbook build 

debug:
	docker run --rm -it -p 4000:4000 -v ${PRJ_DIR}:/data/${GITBOOK_NAME} -w /data/${GITBOOK_NAME} $(DOCKER_IMAGE) sh -c "gitbook serve"
