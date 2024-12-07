FROM snowdreamtech/alpine:3.20.3

LABEL maintainer="snowdream <sn0wdr1am@qq.com>"

RUN addgroup -g 1000 node \
    && adduser -u 1000 -G node -s /bin/sh -D node \
    && apk add --no-cache nodejs-current=21.7.3-r0 \
    npm=10.9.1-r0\
    pnpm@community=9.14.4-r0 \
    yarn=1.22.22-r0