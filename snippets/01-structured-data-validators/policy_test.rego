package main

import rego.v1

empty(value) if {
  count(value) == 0
}

no_violations if {
    empty(deny)
}

test_deny_wrong_instance_type if {
  deny["Instance type m5a.large is not allowed"] with input as {"instance": "m5a.large"}
}

test_allow_correct_instance_type if {
  no_violations with input as {"instance": "t4g.small"}
}