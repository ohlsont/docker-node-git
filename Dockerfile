FROM node:alpine

RUN apk add --no-cache \
		ca-certificates
RUN apk add --update alpine-sdk
RUN apk add --no-cache \
		make \
		python \
		docker \
		dockerd \
		git \
		openrc \
		openssh-client
RUN rc-update add docker boot
CMD ["sh"]
