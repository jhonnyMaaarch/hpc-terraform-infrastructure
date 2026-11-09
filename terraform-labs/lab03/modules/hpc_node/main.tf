
resource "terraform_data" "compute_node" {
  input = {
    hostname  = var.hostname
    cpu_core  = var.cpu_cores
    memory_gb = var.memory_gb
  }
}


