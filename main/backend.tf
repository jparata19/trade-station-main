terraform {
  backend "s3" {
    bucket    = "backend-tf-jose-pablo"
    key       = "terraform.tfstate"
    region    = "us-west-2"
  }
}