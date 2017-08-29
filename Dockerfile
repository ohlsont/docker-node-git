FROM docker:git

ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 0.0.0
ENV YARN_VERSION 0.0.0
RUN apk add --update alpine-sdk
RUN addgroup -g 1000 node \
    && adduser -u 1000 -G node -s /bin/sh -D node \
    && apk add --no-cache \
        libstdc++ \
    && apk add --no-cache \
        python \
				node \
				npm \
				yarn

CMD [ "node" ]
