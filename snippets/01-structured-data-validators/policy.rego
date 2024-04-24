package main

import rego.v1

allowed_instances = {"t4g.small", "t4g.large", "t4g.xlarge"}
disallowed_instances = ["m5a.large"]


deny contains msg if {
  not input.instance in allowed_instances

  print(input)

  msg := sprintf("Instance type %s is not allowed - rule 2", input.instance)
}

deny contains msg if {
  input.instance in disallowed_instances

  print(input)

  msg := sprintf("Instance type %s is not allowed - rule 2", input.instance )
}

test_deny_wrong_instance_type if {
  deny with input as {"instance": "m5a.large"}
}