terraform {
  required_version = ">=1.8.4"
}

locals {
  nodes = {
    compute01 = {
      cpu_cores = 32
      memory_gb = 128
      role      = "compute"
    }

    compute02 = {
      cpu_cores = 64
      memory_gb = 256
      role      = "compute"
    }
    compute03 = {
      cpu_cores = 80
      memory_gb = 512
      role      = "gpu"
    }
    compute04 = {
      cpu_cores = 96
      memory_gb = 512
      role      = "compute"
    }
  }
}

resource "terraform_data" "compute_node" {
  for_each = local.nodes

  input = {
    hostname  = each.key
    cpu_cores = each.value.cpu_cores
    memory_gb = each.value.memory_gb
    role      = each.value.role
  }
}


