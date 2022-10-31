provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "example" {
  ami = "ami-017c001a88dd93847"
  instance_type = "t2.micro"
}

terraform {
    backend "s3" {
        bucket = "terraform-up-and-running-state-edison"
        key = "workspaces-example/terraform.tfstate"
        region = "us-west-1"
        dynamodb_table = "terraform-up-and-running-locks"
        encrypt        = true
    }
}