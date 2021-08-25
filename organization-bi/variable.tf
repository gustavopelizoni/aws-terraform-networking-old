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


#####Subnet Public PRD
variable "PROD-PUB-A" {
  default     = "10.251.80.0/21"
  description = "Prod"
  type        = string
}

variable "PROD-PUB-B" {
  default     = "10.251.88.0/21"
  description = "Prod"
  type        = string
}

variable "PROD-PUB-C" {
  default     = "10.251.96.0/21"
  description = "Prod"
  type        = string
}


variable "PROD-PUB-D" {
  default     = "10.251.24.0/21"
  description = "Prod"
  type        = string
}

variable "PROD-PUB-E" {
  default     = "10.251.32.0/21"
  description = "Prod"
  type        = string
}

#####Subnet Public DEV
variable "DEV-PUB-D" {
  default     = "10.251.104.0/21"
  description = "Dev"
  type        = string
}

variable "DEV-PUB-E" {
  default     = "10.251.112.0/21"
  description = "Dev"
  type        = string
}
#####Subnet Public HML
variable "HML-PUB-D" {
  default     = "10.251.64.0/21"
  description = "Hml"
  type        = string
}

variable "HML-PUB-E" {
  default     = "10.251.72.0/21"
  description = "Hml"
  type        = string
}


#####Subnet Private PROD
variable "PROD-PRV-A" {
  default     = "10.251.0.0/21"
  description = "Prod"
  type        = string
}

variable "PROD-PRV-B" {
  default     = "10.251.8.0/21"
  description = "Prod"
  type        = string
}

variable "PROD-PRV-C" {
  default     = "10.251.16.0/21"
  description = "Prod"
  type        = string
}


#####Subnet Private DEV
#####Subnet Private HML
variable "HML-PRIV-A" {
  default     = "10.251.40.0/21"
  description = "Hml"
  type        = string
}

variable "HML-PRIV-B" {
  default     = "10.251.48.0/21"
  description = "Hml"
  type        = string
}

variable "HML-PRIV-C" {
  default     = "10.251.56.0/21"
  description = "Hml"
  type        = string
}


