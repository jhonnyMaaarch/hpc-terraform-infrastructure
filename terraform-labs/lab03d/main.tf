terraform {
  required_version = ">=1.8.4"
}

module "compute_node" {
  source   = "./modules/hpc_node"
  for_each = var.nodes

  hostname  = each.key
  cpu_cores = each.value.cpu_cores
  memory_gb = each.value.memory_gb

}
