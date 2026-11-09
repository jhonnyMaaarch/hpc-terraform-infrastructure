terraform {
  required_version = ">=1.4.8"
}

resource "terraform_data" "compute_node" {

  input = {
    hostname  = var.node_name
    cpu_cores = var.cpu_cores
    memory_gb = var.memory_gb
  }
}
