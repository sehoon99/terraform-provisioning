data "terraform_remote_state" "vpc" {
  backend = "s3"
  # config = merge(var.remote_state.vpc.bhunyd_apnortheast2)
  config = merge(var.remote_state.vpc.bhunyd_apnortheast2, { "assume_role" = { "role_arn" = var.assume_role_arn } })
}

data "terraform_remote_state" "iam" {
  backend = "s3"
  # config = merge(var.remote_state.iam.bhuny-id)
  config = merge(var.remote_state.iam.bhuny-id, { "assume_role" = { "role_arn" = var.assume_role_arn } })
}

data "terraform_remote_state" "security_group" {
  backend = "s3"
  # config = merge(var.remote_state.security_group.bhuny-id.bhunydapne2)
  config = merge(var.remote_state.security_group.bhuny-id.bhunydapne2, { "assume_role" = { "role_arn" = var.assume_role_arn } })
}
