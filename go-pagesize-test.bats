@test "go reports correct pagesize" {
  run ./go-pagesize-test
  [ "$status" -eq 0 ]
}
