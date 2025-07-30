variable "ports" {
    type = list
    default = [8081, 8082, 9090, 8083, 9001]
}

variable "region" {
    type = string
    default = "us-east-1"
}