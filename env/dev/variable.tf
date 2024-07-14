variable "rgs" {
  default = {}

}
variable "subnet" {
  default = {}
}
variable "vnet" {
  default = {

  }

}
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
