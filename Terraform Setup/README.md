# Terraform Setup
Terraform related information and code

### Prerequisites

* Docker: [https://docs.docker.com/desktop/install/windows-install/](https://docs.docker.com/desktop/install/windows-install/)
* Terraform: [https://developer.hashicorp.com/terraform/install](https://developer.hashicorp.com/terraform/install)


### Terraform commands
Open a new terminal and run

This will Prepare your working directory and download all the necessary files for the provider.
```terraform
terraform init
```
This command will validate the syntax of your code.

```terraform
terraform validate
```

The plan command will output the list of changes that need to be made to reach the infrastructure described in your code. In this case the plan should be to create one new file.

```terraform
terraform plan
```

The apply command will persist the planned changes. In this case it will create the file.

```terraform
terraform apply 
```
You can remove the file by running the destroy command
```terraform
terraform destroy
```
