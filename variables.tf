variable "access_key" {
  type = "string"
}

variable "secret_key" {
  type = "string"
}

variable "region" {
  type    = "string"
  default = "eu-west-1"
}

variable "ami" {}

variable "subnet_id" {}

variable "identity" {}
