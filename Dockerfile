FROM gliderlabs/alpine:3.1

RUN apk-install git

ENTRYPOINT ["/bin/sh", "-c"]

ADD ./build.sh /build.sh

CMD ["/build.sh"]
