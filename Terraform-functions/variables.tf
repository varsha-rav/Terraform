variable "tags" {
    type = list  
    default = ["firstec2", "secondec2"]
}

variable "region" {
  default = "us-east-1"
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-0ec18f6103c5e0491"
    "us-west-2" = "ami-0987e9d53da324257"
    "us-east-2" = "ami-068d5d5ed1eeea07c"
  }
}