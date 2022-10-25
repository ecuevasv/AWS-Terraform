provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "my_tf_instance" {
  ami = "ami-08e2d37b6a0129927"
  instance_type = "t2.micro"
  availability_zone = "us-west-2a"

  tags = {
    "Name" = "EC2-Terraform-Instance"
  }
}