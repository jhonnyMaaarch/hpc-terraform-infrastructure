terraform {
  required_version = ">=1.8.4"
}

module "compute01" {
    source = "./modules/hpc_node"

  hostname  = var.hostname
  cpu_cores = var.cpu_cores
  memory_gb = var.memory_gb
}
