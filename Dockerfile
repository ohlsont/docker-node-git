FROM node:alpine

RUN apk add --no-cache \
		ca-certificates

RUN apk add --no-cache \
		make \
		python \
		docker \
		git \
		openssh-client

CMD ["sh"]
