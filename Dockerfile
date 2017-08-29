FROM hink/docker-node-git:docker-node

RUN apk add --no-cache \
		ca-certificates
RUN apk add --no-cache \
		make \
		python \
		docker \
		git \
		openrc \
		openssh-client

RUN rc-update add docker boot

VOLUME ["/var/run/docker.sock"]
RUN npm install --unsafe-perm --global --production resin-cli

CMD ["sh"]
