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

variable "PROD-PUB-D" {
  default     = "10.252.1.128/25"
  description = "Prod"
  type        = string
}

variable "PROD-PUB-E" {
  default     = "10.252.2.0/25"
  description = "Prod"
  type        = string
}

#####Subnet Public DEV
variable "DEV-PUB-C" {
  default     = "10.252.9.0/25"
  description = "Dev"
  type        = string
}

variable "DEV-PUB-D" {
  default     = "10.252.9.128/25"
  description = "Dev"
  type        = string
}

variable "DEV-PUB-E" {
  default     = "10.252.10.0/25"
  description = "Dev"
  type        = string
}

#####Subnet Public HML
variable "HML-PUB-C" {
  default     = "10.252.5.0/25"
  description = "Hml"
  type        = string
}

variable "HML-PUB-D" {
  default     = "10.252.5.128/25"
  description = "Hml"
  type        = string
}

variable "HML-PUB-E" {
  default     = "10.252.6.0/25"
  description = "Hml"
  type        = string
}

#####Subnet Private PROD
variable "PROD-PRV-A" {
  default     = "10.252.2.128/25"
  description = "Prod"
  type        = string
}

variable "PROD-PRV-B" {
  default     = "10.252.3.0/25"
  description = "Prod"
  type        = string
}

variable "PROD-PRV-C" {
  default     = "10.252.3.128/25"
  description = "Prod"
  type        = string
}

#####Subnet Private DEV
variable "DEV-PRV-A" {
  default     = "10.252.10.128/25"
  description = "Hml"
  type        = string
}

variable "DEV-PRV-B" {
  default     = "10.252.11.0/25"
  description = "Hml"
  type        = string
}

variable "DEV-PRV-C" {
  default     = "10.252.11.128/25"
  description = "Hml"
  type        = string
}


#####Subnet Private HML
variable "HML-PRV-A" {
  default     = "10.252.6.128/25"
  description = "Hml"
  type        = string
}

variable "HML-PRV-B" {
  default     = "10.252.7.0/25"
  description = "Hml"
  type        = string
}

variable "HML-PRV-C" {
  default     = "10.252.7.128/25"
  description = "Hml"
  type        = string
}


## VPN Conection Oracle tunnel1_preshared_key
variable "custom_tunnel1_preshared_key" {
  default     = "mpWBUeMby64*"
  description = "Chave tunnel1"
  type        = string
}

variable "custom_tunnel1_inside_cidr" {
  description = "The CIDR block of the inside IP addresses for the first VPN tunnel."
  default     = ""
}

#Rotas VPN
variable "Civitas" {
  default     = "192.168.0.0/24"
  description = "Rota para Civitas"
  type        = string

}