FROM leanlabs/base-builder:latest

RUN apk --update add git && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["git"]
