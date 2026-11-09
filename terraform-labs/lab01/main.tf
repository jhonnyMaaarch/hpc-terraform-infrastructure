terraform {
  required_version = ">=1.4.0"
}

removed {
  from = terraform_data.compute_node

  lifecycle {
    destroy = false
  }
}
