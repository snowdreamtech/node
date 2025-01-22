FROM snowdreamtech/alpine:3.21.0

# OCI annotations to image
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="Node Image Noded On Alpine" \
    org.opencontainers.image.description="Docker Images for Node on Alpine. (i386, amd64, arm32v6, arm32v7, arm64, ppc64le,riscv64, s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/node" \
    org.opencontainers.image.base.name="snowdreamtech/node:alpine" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/node" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.version="18.20.1" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/node"

# keep the docker container running
ENV KEEPALIVE=0 \
    NODEJS_VERSION=18.20.1-r0

ARG GID=1000 \
    UID=1000  \
    USER=node \
    WORKDIR=/home/node

# Create a user with UID and GID
RUN if [ "${USER}" != "root" ]; then \
    addgroup -g ${GID} ${USER}; \
    adduser -h /home/${USER} -u ${UID} -g ${USER} -G ${USER} -s /bin/sh -D ${USER}; \
    # sed -i "/%sudo/c ${USER} ALL=(ALL:ALL) NOPASSWD:ALL" /etc/sudoers; \
    fi

RUN echo "@3.18main https://dl-cdn.alpinelinux.org/alpine/v3.18/main" | tee -a /etc/apk/repositories \
    && echo "@3.18community https://dl-cdn.alpinelinux.org/alpine/v3.18/community" | tee -a /etc/apk/repositories \
    && apk add --no-cache \
    nodejs@3.18main=${NODEJS_VERSION}\
    npm@3.18main \
    pnpm@3.18community \
    yarn@3.18main

# Switch to the user
USER ${USER}

# Set the workdir
WORKDIR ${WORKDIR}

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]