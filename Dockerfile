FROM golang:1.23-alpine AS builder
WORKDIR /app
RUN go install github.com/santhosh-tekuri/jsonschema/cmd/jv@latest

FROM alpine:latest

RUN apk --no-cache add gcompat
COPY --from=builder /go/bin/* /usr/local/bin/
WORKDIR /app

# Command to run the application
ENTRYPOINT ["jv"]
CMD ["--help"]