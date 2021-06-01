FROM golang:1.16



WORKDIR /go/src/app
COPY . .

RUN curl  --insecure -Iv https://proxy.golang.org >/dev/stderr || true
RUN go mod tidy -v
RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]