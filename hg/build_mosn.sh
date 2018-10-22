
projectPath=${GOPATH}'/src/github.com/alipay/sofa-mosn'
workPath=${projectPath}'/hg/'
mosnPath=${workPath}/

export projectPath=${projectPath}
export mosnPath=${mosnPath}

cd ${projectPath}/cmd/mosn/main/

go build

mv ./main $workPath/mosn
