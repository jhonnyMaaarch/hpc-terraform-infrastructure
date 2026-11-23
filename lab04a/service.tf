# Create a Kubernetes Service.
resource "kubernetes_service_v1" "web_service" {

  # Identify the Service.
  metadata {
    name = "terraform-web-service"

    # Use our existing Terraform-managed namespace.
    namespace = kubernetes_namespace_v1.lab.metadata[0].name
  }

  # Define how the Service operates.
  spec {

    # Route traffic to Pods with this label.
    selector = {
      app = "terraform-web"
    }

    # Expose the NGINX application.
    port {
      port        = 80
      target_port = 80
    }

    # Make the Service accessible within the cluster.
    type = "ClusterIP"
  }
}
