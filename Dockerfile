FROM node:alpine

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
RUN sysctl -w kernel.grsecurity.chroot_deny_chmod=0
RUN rc-update add docker boot
CMD ["sh"]
