# Node Image (Rocky Variant)
# Extends snowdreamtech/rocky with additional tooling and configuration.

FROM snowdreamtech/rocky:10.2.0

# Build-time Configuration
ARG BUILDTIME \
    VERSION \
    REVISION \
    KEEPALIVE=0 \
    CAP_NET_BIND_SERVICE=0 \
    LANG=C.UTF-8 \
    UMASK=022 \
    DEBUG=false \
    PASSWORDLESS_SUDO=false \
    PGID=0 \
    PUID=0 \
    USER=root \
    WORKDIR=/root \
    NODEJS_VERSION=22.22.2-1.el10_1

# Standard OCI Metadata (https://github.com/opencontainers/image-spec)
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="Node Image Based On Rocky" \
    org.opencontainers.image.description="Docker Images for Node on Rocky. (i386, amd64, arm32v5, arm32v7, arm64, mips64le, ppc64le, s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/node" \
    org.opencontainers.image.base.name="snowdreamtech/rocky:10.2.0" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/node" \
    org.opencontainers.image.vendor="Snowdream Tech" \
# x-release-please-start-version
    org.opencontainers.image.version="${VERSION:-22.22.2}" \
# x-release-please-end
    org.opencontainers.image.created="${BUILDTIME}" \
    org.opencontainers.image.revision="${REVISION}" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/node"

# Runtime Environment Configuration
ENV KEEPALIVE=${KEEPALIVE} \
    CAP_NET_BIND_SERVICE=${CAP_NET_BIND_SERVICE} \
    LANG=${LANG} \
    UMASK=${UMASK} \
    DEBUG=${DEBUG} \
    PASSWORDLESS_SUDO=${PASSWORDLESS_SUDO} \
    PGID=${PGID} \
    PUID=${PUID} \
    USER=${USER} \
    WORKDIR=${WORKDIR} \
    NODEJS_VERSION=${NODEJS_VERSION}

# Additional tooling and configuration for Node image
RUN set -eux \
    && dnf -y --allowerasing update \
    && dnf -y --allowerasing install \
    nodejs-${NODEJS_VERSION} \
    npm \
    && dnf -y --allowerasing autoremove \
    && dnf -y --allowerasing clean all \
    && rm -rf /var/cache/dnf \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

# Container Orchestration Files
COPY entrypoint.d /usr/local/bin/entrypoint.d

RUN chmod +x /usr/local/bin/entrypoint.d/*

# Standard Healthcheck (Verification of core system responsiveness)
HEALTHCHECK NONE

# Process Execution
USER root
WORKDIR /root
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
