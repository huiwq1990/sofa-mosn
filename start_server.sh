
#go build cmd/mosn/main/mosn.go

# go run mosn.go start -c /Users/hg/go/src/github.com/alipay/sofa-mosn/cmd/mosn/main/sofa-pa.json &

./mosn start -c /Users/hg/go/src/github.com/alipay/sofa-mosn/cmd/mosn/main/sofa-pa.json &

# go build -o sofarpc-server examples/sofarpc-sample/server.go
#go run /Users/hg/go/src/github.com/alipay/sofa-mosn/examples/sofarpc-sample/server.go &

./sofarpc-server &