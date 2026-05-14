.PHONY: build test lint install clean

build:
	go build -o bin/aws-quotas-pp-cli ./cmd/aws-quotas-pp-cli

test:
	go test ./...

lint:
	golangci-lint run

install:
	go install ./cmd/aws-quotas-pp-cli

clean:
	rm -rf bin/

build-mcp:
	go build -o bin/aws-quotas-pp-mcp ./cmd/aws-quotas-pp-mcp

install-mcp:
	go install ./cmd/aws-quotas-pp-mcp

build-all: build build-mcp
