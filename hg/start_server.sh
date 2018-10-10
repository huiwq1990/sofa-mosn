
mainPath=$GOPATH'/src/github.com/alipay/sofa-mosn'
workPath=$mainPath'/hg/'

cd $mainPath/cmd/mosn/main/
go build

mv ./main $workPath/mosn

cd $workPath

./mosn start -c ${workPath}/sofa-pa.json &

#go build -o sofarpc-sgoerver examples/sofarpc-sample/server.go
#go run /Users/hg/go/src/github.com/alipay/sofa-mosn/examples/sofarpc-sample/server.go &

./sofarpc-server &