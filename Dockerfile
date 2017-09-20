FROM circleci/golang:latest
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN sudo apt-get install nodejs \
		ca-certificates \
		make \
		python \
		openrc \
		openssh-client

VOLUME ["/var/run/docker.sock"]
RUN sudo npm install --unsafe-perm --global --production resin-cli

CMD ["sh"]
