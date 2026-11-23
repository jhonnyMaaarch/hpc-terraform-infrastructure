# Create Kubernetes deployment
resource "kubernetes_deployment_v1" "web_app" {
  # Define deployment metadata	                               
  metadata {
    # name of our deployment
    name = "terraform-web"

    # Namespace created in Lab 04B.
    namespace = kubernetes_namespace_v1.lab.metadata[0].name
  }
  # Define the desired Deployment state.
  spec {
    # replica now updated to 3.
    replicas = 3

    # Identify the Pods managed by this deployment.
    selector {
      match_labels = {
        app = "terraform-web"
      }
    }
    # Define the Pod template
    template {
      metadata {
        labels = {
          app = "terraform-web"
        }
      }


      # Define the containers inside each Pod. 
      spec {
        container {
          # Container name.
          name = "nginx"

          # Container image.
          image = "nginx:stable"

          # Application listening port.
          port {
            container_port = 80
          }
        }
      }
    }
  }
}
