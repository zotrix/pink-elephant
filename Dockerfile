FROM golang:1.16


WORKDIR /go/src/app
COPY . .

RUN go mod tidy -v
RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]