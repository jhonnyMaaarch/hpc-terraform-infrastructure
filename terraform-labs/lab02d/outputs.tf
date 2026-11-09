output "cluster_nodes" {
  value = local.nodes
}

output "node_count" {
  value = length(local.nodes)
}
