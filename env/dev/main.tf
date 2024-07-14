module "rg" {
  source = "../../modules/rg"
  rgs    = var.rgs
}

module "vnet" {
  source = "../../modules/vnet"
  vnet   = var.vnet
}

module "subnet" {
  source = "../../modules/subnet"
  subnet = var.subnet
}


# module "nodepool" {
#     source = "../../modules/nodepool"
#     nodepools = var.nodepools

# }
module "k8scluster" {
  source     = "../../modules/k8scluster"
  k8scluster = var.k8scluster

}