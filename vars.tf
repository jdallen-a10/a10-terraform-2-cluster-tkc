#
# Variables for TKC Demo
#

variable "thunder_username" {
  description = "Username to use for API access to Thunder node"
  type        = string
  default     = "admin"
}

variable "thunder_password" {
  description = "Password for Username for API access to Thunder node"
  type        = string
  default     = "a10"
}

variable "thunder_ip_address" {
  description = "IP address of MGMT port on Thunder node"
  type        = string
  default     = "10.1.1.32"
}

variable "thunder_vip" {
  description = "IP address of VIP on Thunder node"
  type        = string
  default     = "10.1.1.44"
}

variable "thunder_vip_2" {
  description = "IP address of VIP on Thunder node"
  type        = string
  default     = "10.1.1.46"
}

variable "prov_config_path_1" {
  description = "Path to a Kubernetes config file"
  type        = string
  default     = "./microk8s.config"
}

variable "prov_config_path_2" {
  description = "Path to a Kubernetes config file"
  type        = string
  default     = "./k3os.config"
}
