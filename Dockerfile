FROM alpine

LABEL maintainer="Shunsuke Miyoshi <swfft814@gmail.com>"

# Install kubectl
RUN apk add --update ca-certificates \
 && apk add --update -t deps curl \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

# Install istioctl
ADD istioctl /usr/local/bin

CMD ["istioctl", "help"]
