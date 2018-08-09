APP_NAME=istioctl
APP_VERSION=1.0.0

all: build run

build:
	sh downloadIstio.sh
	docker build -t $(APP_NAME):$(APP_VERSION) .

run:
	docker run --rm -it $(APP_NAME):$(APP_VERSION)
