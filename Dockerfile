FROM golang:1.10.1
COPY . $GOPATH/src/rest

RUN go get -u github.com/gorilla/mux

WORKDIR /go/src/rest

RUN go install .

EXPOSE 8000

CMD ["/go/bin/go_restapi"]