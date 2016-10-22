REPO=moander/devpod-aspnet
TAG=1

.PHONY: build tag

build:
	docker build -t ${REPO} .

tag: build
	docker tag ${REPO} ${REPO}:${TAG}

run: build
	docker run -it ${REPO}

push: tag
	docker push ${REPO}
