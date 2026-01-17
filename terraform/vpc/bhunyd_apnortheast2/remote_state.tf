# data "terraform_remote_state" "s3" {
#   backend = "s3"

#   #   config  = merge(var.remote_state.s3.bhuny-id)
#   config = merge(var.remote_state.s3.bhuny-id, { 
#   "assume_role" = { 
#     "role_arn" = var.assume_role_arn 
#     } 
#   })
# }

data "terraform_remote_state" "s3" {
  backend = "s3"

  config = {
    bucket   = "bhuny-id-apnortheast2-tfstate"
    key      = "provisioning/terraform/vpc/bhunyd_apnortheast2/terraform.tfstate"
    region   = "ap-northeast-2"
    
    # 어드민 권한이 있는 역할을 명시적으로 사용
    assume_role = {
      role_arn = "arn:aws:iam::[사용자_계정_ID]:role/atlantis-bhuny-id-admin"
    }
  }
}