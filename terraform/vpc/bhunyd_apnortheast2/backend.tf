terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "bhuny-id-apnortheast2-tfstate"
    key            = "provisioning/terraform/vpc/bhunyd_apnortheast2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
  
}
