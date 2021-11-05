module "network" {
  source  = "app.terraform.io/hashicorp-myorg/network/google"
  version = "3.4.0"

  project_id   = var.project
  network_name = "myorg-newvpc"
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name   = "myorg-subnet"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = var.region
    }
  ]


}