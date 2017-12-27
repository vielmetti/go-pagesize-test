@test "go reports correct pagesize" {
  run ./go-pagesize-test
  [ "$status" -eq 0 ]
}

@test "docker deeply nested directories" {
  run docker build -t deep-files .
  [ "$status" -eq 0 ]
}
