.PHONY: build test lint install clean

build:
	go build -o bin/aws-pp-pp-cli ./cmd/aws-pp-pp-cli

test:
	go test ./...

lint:
	golangci-lint run

install:
	go install ./cmd/aws-pp-pp-cli

clean:
	rm -rf bin/

build-mcp:
	go build -o bin/aws-pp-pp-mcp ./cmd/aws-pp-pp-mcp

install-mcp:
	go install ./cmd/aws-pp-pp-mcp

build-all: build build-mcp
