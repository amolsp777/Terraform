variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
  default     = "adminuser"
}

variable "admin_password" {
  description = "The admin password for the VM"
  type        = string
  default     = "Password1234!"
}

variable "ad_domain" {
  description = "The Active Directory domain to join"
  type        = string
  default     = "example.com"
}

variable "ad_user" {
  description = "The Active Directory user with permissions to join the domain"
  type        = string
  default     = "ad_admin_user"
}

variable "ad_password" {
  description = "The password for the Active Directory user"
  type        = string
  default     = "ad_admin_password"
}
