# VPC Variables
variable "region" {
  default     = "us-east-1"
  description = "AWS Region"
  type        = string
}

variable "vpc-trisul" {
  default     = "10.252.0.0/20"
  description = "VPC CIDR Block"
  type        = string
}

#####Subnet Public PRD
variable "PROD-PUB-A" {
  default     = "10.252.0.0/25"
  description = "Prod"
  type        = string
}

variable "PROD-PUB-B" {
  default     = "10.252.0.128/25"
  description = "Prod"
  type        = string
}

variable "PROD-PUB-C" {
  default     = "10.252.1.0/25"
  description = "Prod"
  type        = string
}

