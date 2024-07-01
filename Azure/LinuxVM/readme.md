# Azure VM with AD Join using Terraform

This repository contains Terraform code to create an Azure Virtual Machine (VM) running Ubuntu and automatically join it to an Active Directory (AD) domain. The custom script to join the AD is downloaded from a specified URL.
This code is specially for Linux-based machines to join in AD Domain. 
### Join Azure Linux VM in AD doamin

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- Azure subscription.
- Active Directory domain credentials (username and password).
- URL to the `join-ad.sh` script.

## Variables

The following variables need to be defined for the Terraform configuration:

- `ad_domain`: The Active Directory domain to join.
- `ad_user`: The username for the Active Directory account.
- `ad_password`: The password for the Active Directory account.
- `admin_username`: The admin username for the VM.
- `admin_password`: The admin password for the VM.

## Terraform Configuration

The main Terraform configuration includes the resource definitions for the Azure VM and the VM extension to run the custom script.

### Example Variables

Define the variables in a `terraform.tfvars` file:

```hcl
ad_domain = "your-ad-domain.com"
ad_user = "ad-user"
ad_password = "ad-password"
ad_ou = "ou path"
ad_group = "AD group if you want to provide access to group members."
admin_username = "vm-admin"
admin_password = "vm-admin-password"
```
### Deploy
1. Initialize Terraform:
```sh
terraform init
```
2. Apply the Terraform configuration:
```sh
terraform apply
```
3. Confirm the apply action by typing yes when prompted.

### Verify
1. SSH into the VM using the public IP address and admin credentials.
2. Check the log file /tmp/join-ad.log to ensure the script executed successfully and the VM joined the AD domain.
### Cleanup
To remove all resources created by this configuration, run:
```sh
terraform destroy
```
