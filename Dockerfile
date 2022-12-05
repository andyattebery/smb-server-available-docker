FROM alpine

LABEL org.opencontainers.image.source=https://github.com/andyattebery/samba-docker
LABEL org.opencontainers.image.description="Checks if SMB share is available"
LABEL org.opencontainers.image.licenses=MIT

RUN apk add --no-cache samba

RUN mkdir -p /run \
 && mkdir -p /config

ADD entrypoint.sh /run

VOLUME [ "/config" ]

ENTRYPOINT [ "entrypoint.sh" ]
