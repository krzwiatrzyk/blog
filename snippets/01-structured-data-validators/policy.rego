package main

import rego.v1

allowed_instances := ["t4g.small", "t4g.large", "t4g.xlarge"]
disallowed_instances := ["m5a.large"]

deny contains msg if {
  print input

  not input.instance in allowed_instances

  msg := sprintf("Instance type %s is not allowed", [input.instance])
}

#deny[msg] {
#  input.instance == allowed_instances[_]
#  msg := sprintf("Instance type %s is not allowed", [input.instance])
#}

#deny contains msg if {
#  print(input)
#
#  input.instance in disallowed_instances
#
#  msg := sprintf("Instance type %s is not allowed", [input.instance])
#}

