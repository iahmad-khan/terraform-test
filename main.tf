#
# DO NOT DELETE THESE LINES UNTIL INSTRUCTED TO!
#
# Your AMI ID is:
#
#     ami-0b508e9b54730f606
#
# Your subnet ID is:
#
#     subnet-088d4079d6dcc7741
#
# Your VPC security group ID is:
#
#     sg-025bab05d0c0b46cf
#
# Your Identity is:
#
#     hashi-training-public-bulldog
#
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t2.micro"

  subnet_id              = var.subnet_id
  vpc_security_group_ids = ["sg-025bab05d0c0b46cf"]

  tags = {
    "Identity"    = "hashi-training-public-bulldog"
    "Owner"       = "iahmad"
    "Name"        = "iahmad"
    "Environment" = "Training"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "public_dns" {
  value = aws_instance.web.public_dns
}
