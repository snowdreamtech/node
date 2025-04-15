FROM snowdreamtech/debian:12.10.0

# OCI annotations to image
LABEL org.opencontainers.image.authors="Snowdream Tech" \
    org.opencontainers.image.title="Node Image Noded On Debian" \
    org.opencontainers.image.description="Docker Images for Node on Debian. (i386,amd64,arm32v5,arm32v7,arm64,mips64le,ppc64le,s390x)" \
    org.opencontainers.image.documentation="https://hub.docker.com/r/snowdreamtech/node" \
    org.opencontainers.image.base.name="snowdreamtech/node:debian" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/snowdreamtech/node" \
    org.opencontainers.image.vendor="Snowdream Tech" \
    org.opencontainers.image.version="12.8" \
    org.opencontainers.image.url="https://github.com/snowdreamtech/node"

# keep the docker container running
ENV KEEPALIVE=1 \
    NODEJS_VERSION=18.19.0+dfsg-6~deb12u2

ENV KEEPALIVE=1 \
    OPENSSH_VERSION=1:9.2p1-2+deb12u5 \
    SSH_ROOT_PASSWORD=

ARG GID=1000 \
    UID=1000  \
    USER=node \
    WORKDIR=/home/node

# Create a user with UID and GID
RUN set -eux \
    &&if [ "${USER}" != "root" ]; then \
    addgroup --gid ${GID} ${USER}; \
    adduser --home /home/${USER} --uid ${UID} --gid ${GID} --gecos ${USER} --shell /bin/bash --disabled-password ${USER}; \
    # sed -i "/%sudo/c ${USER} ALL=(ALL:ALL) NOPASSWD:ALL" /etc/sudoers; \
    fi \
    && apt-get -qqy --purge autoremove \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/* 


# Install openssh
RUN set -eux \
    && apt-get -qqy update  \
    && apt-get -qqy install --no-install-recommends \ 
    # fastfetch \
    xauth \
    openssh-server=${OPENSSH_VERSION} \ 
    openssh-sftp-server=${OPENSSH_VERSION} \ 
    openssh-client=${OPENSSH_VERSION} \
    && mkdir -p /run/sshd \ 
    && sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config \ 
    && sed -i "s/^#PasswordAuthentication/PasswordAuthentication/g" /etc/ssh/sshd_config \ 
    && sed -i "s/^#PermitEmptyPasswords/PermitEmptyPasswords/g" /etc/ssh/sshd_config \ 
    && sed -i "s/^#HostKey/HostKey/g" /etc/ssh/sshd_config \ 
    && sed -i "s/^#PubkeyAuthentication/PubkeyAuthentication/g" /etc/ssh/sshd_config \ 
    && sed -i "s/^#IgnoreRhosts/IgnoreRhosts/g" /etc/ssh/sshd_config \ 
    && sed -i "s/^#StrictModes/StrictModes/g" /etc/ssh/sshd_config \ 
    && sed -i "s/#MaxAuthTries.*/MaxAuthTries 7/g" /etc/ssh/sshd_config \ 
    && sed -i "s/#MaxSessions.*/MaxSessions 10/g" /etc/ssh/sshd_config \ 
    && sed -i "s/#ClientAliveInterval.*/ClientAliveInterval 900/g" /etc/ssh/sshd_config \ 
    && sed -i "s/#ClientAliveCountMax.*/ClientAliveCountMax 0/g" /etc/ssh/sshd_config \ 
    && sed -i "s/Subsystem.*/Subsystem\tsftp\tinternal-sftp/g" /etc/ssh/sshd_config \
    && sed -i -E "s/#?AllowAgentForwarding.*/AllowAgentForwarding yes/g" /etc/ssh/sshd_config \
    && sed -i -E "s/#?AllowTcpForwarding.*/AllowTcpForwarding yes/g" /etc/ssh/sshd_config \
    && sed -i -E "s/#?AllowTcpForwarding.*/AllowTcpForwarding yes/g" /etc/ssh/sshd_config \
    && sed -i -E "s/#?GatewayPorts.*/GatewayPorts yes/g" /etc/ssh/sshd_config \
    && sed -i -E "s/#?X11Forwarding.*/X11Forwarding yes/g" /etc/ssh/sshd_config \
    && sed -i -E "s/#?X11DisplayOffset.*/X11DisplayOffset 10/g" /etc/ssh/sshd_config \
    && sed -i -E "s/#?X11UseLocalhost.*/X11UseLocalhost yes/g" /etc/ssh/sshd_config \
    && sed -i -E "s/#?PermitTTY.*/PermitTTY yes/g" /etc/ssh/sshd_config \
    && sed -i -E "s/#?PrintMotd.*/PrintMotd no/g" /etc/ssh/sshd_config \ 
    && sed -i -E "s/#?PrintLastLog.*/PrintLastLog yes/g" /etc/ssh/sshd_config \
    # && echo '#!/bin/sh' | tee /etc/update-motd.d/20-fastfetch \
    # && echo 'fastfetch --pipe false' | tee -a /etc/update-motd.d/20-fastfetch \
    # && chmod +x /etc/update-motd.d/20-fastfetch \
    && apt-get -qqy --purge autoremove \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

RUN set -eux \
    && apt-get -qqy update  \
    && apt-get -qqy install --no-install-recommends \ 
    nodejs=${NODEJS_VERSION}\
    npm \
    yarnpkg \
    && ln -s /usr/bin/yarnpkg /usr/bin/yarn \
    && npm install -g pnpm \
    && apt-get -qqy --purge autoremove \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

# Switch to the user
# USER ${USER}

# Set the workdir
WORKDIR ${WORKDIR}

EXPOSE 22

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]