FROM node:alpine

VOLUME ["/var/run/docker.sock"]
RUN apk add --no-cache \
		ca-certificates
RUN apk add --update alpine-sdk
RUN apk add --no-cache \
		make \
		python \
		docker \
		git \
		openrc \
		openssh-client

RUN rc-update add docker boot
CMD ["sh"]
