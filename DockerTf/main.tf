terraform {
  required_providers {
    docker={
        source="terraform-providers/docker"
        version= "~>2.7.2" 
    }
  }
}
provider "docker" {
  
}
# resource "random_string" "name" {
#   count = 2
#   length = 4
#   special = false
#   upper = false
# }
resource "docker_image" "node" {
    name="nodered/node-red:latest"
  
}
# resource "docker_container" "nodecontainer" {
#   count = 2
#   name=join("-",["nodecontainer",random_string.name[count.index].result])
#   image=docker_image.node.latest
#   ports{
#     # external=1880
#     internal=1880
#   }
# }
# output "Ip" {
#   value = docker_container.nodecontainer.ip_address
#   description = "tis is cintainer ip"
  
# }