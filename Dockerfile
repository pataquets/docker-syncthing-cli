FROM golang:1

RUN \
  go get -v -d github.com/syncthing/syncthing-cli

WORKDIR /go/src/github.com/syncthing/syncthing-cli

RUN \
  export GOPATH="$(pwd)/Godeps/_workspace:${GOPATH}" && \
  go build -v

ENTRYPOINT [ "./syncthing-cli" ]
