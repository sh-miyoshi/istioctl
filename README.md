# Istio Client

## Overview

This container provides the Istio client istioctl and the Kubernetes client kubectl.  
kubectl use when deploying applications by istio like following,

``` text
kubectl apply -f <(istioctl kube-inject -f <resource.yaml>)
```

## Build

``` text
make
```

## Docker image tags and respective Dockerfile links

- `1.1.1`, `latest`: [master/Dockerfile](https://github.com/sh-miyoshi/istioctl/blob/master/Dockerfile)
- `1.1.1`: [v1.1.1/Dockerfile](https://github.com/sh-miyoshi/istioctl/tree/v1.1.1)
- `1.0.0`: [v1.0.0/Dockerfile](https://github.com/sh-miyoshi/istioctl/tree/v1.0.0)
- `ubuntu-base`: [ubuntu-base/Dockerfile](https://github.com/sh-miyoshi/istioctl/blob/ubuntu-base/Dockerfile)

## Run

``` text
docker run --rm -it smiyoshi/istioctl:1.1.1 istioctl version
```

## Author

Shunsuke Miyoshi
