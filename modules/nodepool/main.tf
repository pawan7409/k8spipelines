
resource "azurerm_kubernetes_cluster_node_pool" "example" {
  for_each = var.nodepools
  name                  = each.value.name
  kubernetes_cluster_id = data.azurerm_kubernetes_cluster_node_pool.k8scluster[each.key].kubernetes_cluster_id
  vm_size               = each.value.vm_size
  node_count            = each.value.node_count

  enable_auto_scaling   = true
  min_count             = 1   
  max_count             = 3 

  tags = {
    Environment = "Production"
  }
}

data "azurerm_kubernetes_cluster_node_pool" "k8scluster" {
  for_each = var.nodepools
  name                    = each.value.nodepoolname
  kubernetes_cluster_name = each.value.kubernetes_cluster_name
  resource_group_name     = each.value.resource_group_name
}
 
# output "id" {
#   value = data.azurerm_kubernetes_cluster_node_pool.example.id
# }