.PHONY: all test get_deps

all: test install

install: get_deps
	go install github.com/tendermint/basecoin/cmd/...

test:
	go test github.com/tendermint/basecoin/...
	go run tests/tmsp/*.go

get_deps:
	go get -d github.com/tendermint/basecoin/...

update_deps:
	go get -d -u github.com/tendermint/basecoin/...
