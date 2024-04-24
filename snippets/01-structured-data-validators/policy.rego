package main

deny[msg] {
  not input.instance

  msg := "Instance size is not allowed"
}


# Define the disallowed instance types
disallowed_instances = {"t4g.small", "t4g.large", "t4g.xlarge"}

# Check if the instance field is disallowed
deny {
    input.instance == disallowed
} {
    disallowed = disallowed_instances[_]
}