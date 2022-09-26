variable "location" {
  description = "região da Azure"
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "Camada de serviço"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication type"
  type        = string
  default     = "LRS"
}