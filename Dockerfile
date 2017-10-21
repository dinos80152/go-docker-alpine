# Start from Alpine Linux image with the latest version of Golang
# Naming build stage as builder
FROM golang:alpine as builder

# Install Git for go get
RUN set -eux; \
	apk add --no-cache --virtual git

# Set ENV
ENV GOPATH /go/
ENV GO_WORKDIR $GOPATH/src/github.com/dinos80152/golang-docker-alpine/

# Set WORKDIR to go source code directory
WORKDIR $GO_WORKDIR

# Add files to image
ADD . $GO_WORKDIR

# Fetch Golang Dependency and Build Binary
RUN go get
RUN go install

# Start from a raw Alpine Linux image
FROM alpine:latest

# Install ca-certificates for ssl
RUN set -eux; \
	apk add --no-cache --virtual ca-certificates

# Copy binary from builder stage into image
COPY --from=builder /go/bin/golang-docker-alpine .

# Execute binary when docker container starts
CMD /golang-docker-alpine

# Expose port 8080 to be connected from outside
EXPOSE 8080