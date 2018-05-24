Protocol.pb.go:
	protoc -I . NetAuth.proto --go_out=plugins=grpc:$(shell go env GOPATH)/src
