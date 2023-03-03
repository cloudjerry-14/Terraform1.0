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