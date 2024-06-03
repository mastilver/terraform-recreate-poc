## Steps

- Run `terraform init`
- Run `terraform apply`
- Run `terraform plan -var="releases=[2]"`

As you can see `null_resource.will_be_recreated` will be destroyed and recreated and `null_resource.will_not_be_recreated` will stays put.