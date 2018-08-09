APP_NAME=istioctl
APP_VERSION=1.0.0

all: build

build:
	sh downloadIstio.sh
	docker build -t $(APP_NAME):$(APP_VERSION) --build-arg http_proxy="$(http_proxy)" --build-arg https_proxy="$(https_proxy)" .
