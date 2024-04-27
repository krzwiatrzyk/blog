package main 

empty(value) {
  count(value) == 0
}

no_violations {
  empty(deny)
}

test_deny_wrong_instance_type {
  deny with input as {"instance": "t4g.small"}
}