# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "example" {
    name = "multi-cloud-rg-demo"
    location = "West Europe"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-multi-cloud-demo-bucket12021"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

