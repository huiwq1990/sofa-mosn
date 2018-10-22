package main

import (
	"github.com/valyala/fasthttp"
	"fmt"
)

func main()  {
	//bb := make([]byte,100)
	//code,by,err := fasthttp.Get(bb,"")
	//fmt.Println(err)
	//fmt.Printf("",code)
	//fmt.Printf(string(by))
	//
	//fmt.Println(bb)

//	fasthttp.Do(nil,nil)


	req := fasthttp.AcquireRequest()
	req.SetRequestURI("http://localhost:8080")

	resp := fasthttp.AcquireResponse()
	client := &fasthttp.Client{}
	client.Do(req, resp)


	//fmt.Println(req.Body())
	fmt.Println(resp.Header.String())
	bodyBytes := resp.Body()
	fmt.Println(string(bodyBytes))
	fmt.Println("end")

}
