package main

import "list"

//instance!: string

//instance!: "t4gs.small" | "t4g.micro" | "t4g.medium"

_allowedInstances: [
    "t4g.small",
    "t4g.micro",
    "t4g.medium"
]

instanceTypeAllowed: list.Contains(_allowedInstances, instance)

//if !instanceTypeAllowed {
//    error: _|_
//}

