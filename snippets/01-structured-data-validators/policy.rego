package main

disallowed_instances_v1 = {"t4g.small", "t4g.large", "t4g.xlarge"}
disallowed_instances_v2 = ["t4g.small", "t4g.large", "t4g.xlarge"]


deny[msg] {
  input.instance == disallowed_instances_v1[_]

  msg := "Instance size is not allowed"
}

test_deny {
  deny with input.instance as disallowed_instances_v2
}
