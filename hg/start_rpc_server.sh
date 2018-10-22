
projectPath=${GOPATH}'/src/github.com/alipay/sofa-mosn'
workPath=${projectPath}'/hg/'
mosnPath=${workPath}/

cd ${projectPath}/cmd/mosn/main/

go build

mv ./main $workPath/mosn

cd ${projectPath}/examples/tcpproxy-sample

${mosnPath}/mosn start -c ${workPath}/sofa-pa.json &
