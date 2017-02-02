all:	go-pagesize-test check

go-pagesize-test:	go-pagesize-test.go
	go build go-pagesize-test.go

check: go-pagesize-test
	bats go-pagesize-test.bats
