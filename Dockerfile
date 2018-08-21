FROM ubuntu:18.04

LABEL maintainer="Shunsuke Miyoshi <swfft814@gmail.com>"

RUN apt-get update -y && apt-get install -y \
  curl

# Install kubectl
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl

# Install istioctl
ADD istioctl /usr/local/bin

CMD ["istioctl", "help"]
