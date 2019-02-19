provider "aws"
{
  region = "eu-central-1"
}

terraform
{
  backend "s3"
  {
    bucket = "terraformtesthc"
    key    = "myapp/dev/terraform.tfstate"
    region = "eu-central-1"
  }
}

resource "aws_vpc" "terraformtesthc"
{
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags
  {
    Name = "terraformtesthc"
  }
}