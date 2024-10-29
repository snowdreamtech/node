FROM snowdreamtech/alpine:3.20.2

LABEL maintainer="snowdream <sn0wdr1am@qq.com>"

RUN addgroup -g 1000 node \
    && adduser -u 1000 -G node -s /bin/sh -D node \
    && apk add --no-cache nodejs-current=21.7.3-r0 \
    npm=10.8.0-r0 \
    pnpm@community=9.12.3-r0 \
    yarn=1.22.22-r0