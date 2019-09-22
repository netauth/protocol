Protocol.pb.go:
	protoc NetAuth.proto --go_out=plugins=grpc:.
	mv github.com/NetAuth/Protocol/NetAuth.pb.go .
	rm -r github.com/

v2/rpc.pb.go:
	protoc -I . v2/rpc.proto --go_out=plugins=grpc:.
	mv github.com/NetAuth/Protocol/v2/rpc.pb.go v2/
	rm -r github.com/

all: Protocol.pb.go v2/rpc.pb.go
