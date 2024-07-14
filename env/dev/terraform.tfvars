rgs = {
  rg1 = {
    name     = "pawayug-rg0"
    location = "West Europe"
  }
  rg2 = {
    name     = "pawayug-rg1"
    location = "West Europe"
  }
  rg3 = {
    name     = "pawayug-rg2"
    location = "West Europe"
  }
}
vnet = {
  vnet1 = {
    name                = "vnet"
    location            = "West Europe"
    resource_group_name = "pawayug-rg"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}
subnet = {
  subnet1 = {
    name                 = "subne1"
    resource_group_name  = "pawayug-rg"
    virtual_network_name = "vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
k8scluster = {
  cluster1 = {
    name                = "k8s-cluster-aks1"
    location            = "West Europe"
    resource_group_name = "pawayug-rg"
    dns_prefix          = "exampleaks1"
    name1               = "nodepool1"
    node_count          = 1
    vm_size             = "Standard_D2_v2"
  }
}



nodepools = {
  pool1 = {
    name                    = "internal"
    kubernetes_cluster_name = "k8s-cluster-aks1"
    resource_group_name     = "pawayug-rg"
    nodepoolname            = "internal"
    vm_size                 = "Standard_DS2_v2"
    node_count              = 1
  }
}
