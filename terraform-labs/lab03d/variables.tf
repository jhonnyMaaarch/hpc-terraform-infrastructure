variable "nodes" {

  type = map(object({
    cpu_cores = number
    memory_gb = number
  }))
}

