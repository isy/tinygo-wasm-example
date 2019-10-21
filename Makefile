build:
	docker run --rm -v $(CURDIR):/go -e "GOPATH=/go" tinygo/tinygo tinygo build -o /go/main.wasm -target wasm --no-debug /go/main.go

exec:
	docker run --rm -v $(CURDIR):/go -e "GOPATH=/go" tinygo/tinygo /bin/bash -c "cp /usr/local/tinygo/targets/wasm_exec.js /go/"

serve:
	go run ./cmd/server.go

clean:
	rm -f *.wasm