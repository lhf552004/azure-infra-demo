# Infrastrture project for Azure DevOps Demo Project

## Initialize

Create sensitive-values.tfvars, follow sensitive-values.tfvars.example

## Run

```
terraform fmt -recursive

terraform validate

terraform init

terraform plan -var-file="dev.tfvars" -var-file="sensitive-values.tfvars"

terraform apply -var-file="dev.tfvars" -var-file="sensitive-values.tfvars"
```