FROM alpine:3.10.2

RUN apk add --no-cache \
    bash \
    git \
    git-lfs \
    openssh-client \
    ca-certificates

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
