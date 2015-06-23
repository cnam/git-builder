FROM leanlabs/base-builder:latest

RUN apk --update add git \
        openssh && \
    mkdir -p /root/.ssh && \
    chmod 700 /root/.ssh && \
    ssh-keyscan github.com bitbucket.org gitlab.com >> /root/.ssh/known_hosts && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["git"]
