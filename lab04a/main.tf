terraform {
  # Declare the provider plugins this project requires.
  required_providers {
    # Local name used to reference the kubernetes provider.
    kubernetes = {
      # official provider maintained by hashiCorp.
      source = "hashicorp/kubernetes"


      # Allow compatible releases within version 3.x.
      version = "~>3.0"
    }
  }
}

# Configure how Terraform connects to kubernetes.
provider "kubernetes" {

  # Read cluster credentials from the existing kubeconfig.
  config_path = "~/.kube/config"
}

# Declare a kubernetes namespace resource.
resource "kubernetes_namespace_v1" "lab" {

  # Define the namespace's metadata.
  metadata {
    # Name assigned to the namespace in kubernetes.
    name = "terraform-lab"
  }
}



