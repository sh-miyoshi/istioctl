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

## Run

``` text
docker run --rm -it smiyoshi/istioctl:1.0.0 istioctl version
```

## Author

Shunsuke Miyoshi
