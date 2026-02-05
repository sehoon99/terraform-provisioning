locals {
  name = "demo-bhunydapne2"

  container_name = "demo"
  container_port = 8080
  image          = "633309913072.dkr.ecr.ap-northeast-2.amazonaws.com/demoapp:d2edeae84"
  tags = {
    Name = local.name
  }
}
