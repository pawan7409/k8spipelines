variable "k8scluster" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    name1               = string
    node_count          = number
    vm_size             = string
  }))
}
