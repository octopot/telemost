package server

import v1 "go.octolab.org/ecosystem/telemost/api/rpc/v1"

func Twirp() v1.TwirpServer {
	return v1.NewGreeterServiceServer(new(GRPC))
}
