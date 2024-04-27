package main 

import rego.v1


no_violations {
  deny
}

test_deny_wrong_instance_type {
  deny with input as {"instance": "t4g.small"}
}