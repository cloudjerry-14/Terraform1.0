### Creating a container using terraform 

Add the resource provider 
```
terraform {
  required_providers {
    docker={
        source="terraform-providers/docker"
        version= "~>2.7.2" 
    }
  }
}
```
Initialize the provider 
```
provider "docker" { }

```
Let create a docker image resource
```
resource "docker_image" "node" {
    name="nodered/node-red:latest"
  
}
```
Run the 3 terraform command to verfy image is being successfully pulled
```
terraform init
```
image.png

 review the plan 
```
terraform plan

```
image.png

Create the infrastructure
```
terraform apply

```

image.png

Now lets create a container resource 
```
resource "docker_container" "nodecontainer" {
  name="mycontainer"
  image=docker_image.node.latest
  ports{
    external=1880
    internal=1880
  }
}
```
```
terraform apply

```
image.png



