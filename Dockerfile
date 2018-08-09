FROM alpine

LABEL maintainer="Shunsuke Miyoshi <swfft814@gmail.com>"

# Install kubectl
ENV KUBE_LATEST_VERSION="v1.11.2"

RUN apk add --update ca-certificates \
 && apk add --update -t deps curl \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

# Install istioctl
ADD istioctl /usr/local/bin

CMD ["istioctl", "help"]
