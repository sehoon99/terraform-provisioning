data "terraform_remote_state" "kms" {
  backend = "s3"
  #   config  = merge(var.remote_state.kms.bhuny-id.apne2)
  config = merge(var.remote_state.kms.bhuny-id.apne2, { "assume_role" = { "role_arn" = var.assume_role_arn } })
}

data "terraform_remote_state" "secretsmanager" {
  backend = "s3"
  #   config  = merge(var.remote_state.kms.bhuny-id.apne2)
  config = merge(var.remote_state.secretsmanager.bhuny-id.apne2, { "assume_role" = { "role_arn" = var.assume_role_arn } })
}


# data "terraform_remote_state" "demo_bhunydapne2" {
#   backend = "s3"
#   #   config  = merge(var.remote_state.ecs.demo.bhunyapne2)
#   config = merge(var.remote_state.ecs.demo.bhunydapne2, { "assume_role" = { "role_arn" = var.assume_role_arn } })
# }


# data "terraform_remote_state" "codedeploy" {
#   backend = "s3"
#   #   config  = merge(var.remote_state.codedeploy.bhuny-id.apne2)
#   config = merge(var.remote_state.codedeploy.bhuny-id.apne2, { "assume_role" = { "role_arn" = var.assume_role_arn } })
# }

# data "terraform_remote_state" "eks" {
#   backend = "s3"
#   #   config  = merge(var.remote_state.eks.bhunyapne2-nhwy)
#   config = merge(var.remote_state.eks.bhunydapne2-nhwy, { "assume_role" = { "role_arn" = var.assume_role_arn } })
# }
