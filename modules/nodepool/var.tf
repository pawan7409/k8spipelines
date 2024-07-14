variable "nodepools" {
  type = map(object({
    name                    = string
    kubernetes_cluster_name = string
    resource_group_name     = string
    nodepoolname            = string
    vm_size                 = string
    node_count              = number
  }))
}
