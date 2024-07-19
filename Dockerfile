FROM snowdreamtech/alpine:3.20.0

LABEL maintainer="snowdream <sn0wdr1am@qq.com>"

RUN apk add --no-cache nodejs=20.15.1-r0 \
    npm=10.8.0-r0 \
    pnpm@community=9.5.0-r0 \
    yarn=1.22.22-r0