FROM circleci/golang:latest
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN sudo apt-get install -y nodejs \
		ca-certificates \
		make \
		python \
		unzip \
		openrc \
		openssh-client

VOLUME ["/var/run/docker.sock"]
RUN sudo npm install --unsafe-perm --global --production resin-cli
RUN go get -u github.com/golang/dep/cmd/dep

# Protobuf
ENV PROTOBUF_VERSION 3.5.1
RUN curl -fsSL https://github.com/google/protobuf/releases/download/v$PROTOBUF_VERSION/protoc-$PROTOBUF_VERSION-linux-x86_64.zip -o protobuf.zip
RUN unzip protobuf.zip
RUN export PATH=$PATH:$(pwd)/bin

RUN go get -u github.com/golang/protobuf/protoc-gen-go

CMD ["sh"]
