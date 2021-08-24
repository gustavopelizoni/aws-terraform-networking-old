# VPC Variables
variable "region" {
  default     = "us-east-1"
  description = "AWS Region"
  type        = string
}

variable "vpc-biviholding" {
  default     = "10.251.0.0/17"
  description = "VPC CIDR Block"
  type        = string
}

variable "PROD-PUB-D" {
  default     = "10.251.24.0/21"
  description = "Prod"
  type        = string
}

variable "HML-PRIV-C" {
  default     = "10.251.56.0/21"
  description = "Hml"
  type        = string
}

variable "HML-PUB-D" {
  default     = "10.251.64.0/21"
  description = "Hml"
  type        = string
}