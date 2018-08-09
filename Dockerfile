FROM alpine

LABEL maintainer="Shunsuke Miyoshi <swfft814@gmail.com>"

ADD istioctl /usr/local/bin

CMD ["istioctl", "help"]
