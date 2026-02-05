variable "assume_role_arn" {
  description = "The role to assume when accessing the AWS API."
  default     = ""
}

# Atlantis user
variable "atlantis_user" {
  description = "The username that will be triggering atlantis commands. This will be used to name the session when assuming a role. More information - https://github.com/runatlantis/atlantis#assume-role-session-names"
  default     = "atlantis_user"
}

# Account IDs
# Add all account ID to here 
variable "account_id" {
  default = {
    id     = "633309913072"
    art-id = "816736805842"
  }
}

# Remote State that will be used when creating other resources
# You can add any resource here, if you want to refer from others
variable "remote_state" {
  default = {
    vpc = {
      bhunyd_apnortheast2 = {
        bucket = "bhuny-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/vpc/bhunyd_apnortheast2/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }
    iam = {
      bhuny-id = {
        bucket = "bhuny-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/iam/bhuny-id/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }

    kms = {
      bhuny-id = {
        apne2 = {
          bucket = "bhuny-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/kms/bhuny-id/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    ecs = {
      nginx = {
        bhunydapne2 = {
          bucket = "bhuny-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/ecs/nginx/bhunyd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    security_group = {
      bhuny-id = {
        bhunydapne2 = {
          bucket = "bhuny-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/securitygroup/bhuny-id/bhunyd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }
  }
}
