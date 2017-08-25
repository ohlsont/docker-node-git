FROM hink/docker-node-git:latest
RUN mkdir -p /usr/src/app
RUN chown node:node /usr/src/app
WORKDIR /usr/src/app
USER node
COPY package.json /usr/src/app/
ARG registry

RUN npm install --quiet --production --no-progress --registry=${registry:-https://registry.npmjs.org} && \
    npm cache clean --force
