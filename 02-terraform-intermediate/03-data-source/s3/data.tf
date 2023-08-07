data "terraform_remote_state" "server" {
  backend = "s3"

  config = {
    bucket  = "tfstate-215785215210"
    key     = "dev/03-data-source/terraform.tfstate"
    region  = var.aws_region
    profile = var.aws_profile
  }
}
