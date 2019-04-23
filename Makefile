Protocol.pb.go:
	protoc NetAuth.proto --go_out=plugins=grpc:.
	mv github.com/NetAuth/Protocol/NetAuth.pb.go .
	rm -r github.com/
