terraform {
  required_version = ">= 1.4.8"
}

locals {
  nodes = {
    compute01 = 32
    compute02 = 64
    compute03 = 80
    compute04 = 96
  }
}

resource "terraform_data" "compute_node" {
  for_each = local.nodes

  input = {
    hostname  = each.key
    cpu_cores = each.value
  }

}

