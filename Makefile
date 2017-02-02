all:	go-pagesize-test

go-pagesize-test:	go-pagesize-test.go
	go build go-pagesize-test.go
