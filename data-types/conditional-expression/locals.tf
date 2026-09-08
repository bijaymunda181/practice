locals {
  environment = "dev"
  project     = "myapp"
  instance_name = "${local.project}-${local.environment}"
}