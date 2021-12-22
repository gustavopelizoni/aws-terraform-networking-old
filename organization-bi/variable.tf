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

#Rotas VPN
variable "oracle-cloud" {
  default     = "172.31.0.0/24"
  description = "Rota para Oracle"
  type        = string

}


variable "transit-gateway" {
  default     = "tgw-064553bc11fb48e83"
  description = "gateway biviholding"
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
variable "HML-PRV-A" {
  default     = "10.251.40.0/21"
  description = "Hml"
  type        = string
}

variable "HML-PRV-B" {
  default     = "10.251.48.0/21"
  description = "Hml"
  type        = string
}

variable "HML-PRV-C" {
  default     = "10.251.56.0/21"
  description = "Hml"
  type        = string
}

variable "Oracle-Cloud" {
  default     = "172.31.0.0/24"
  description = "Rota para Oracle"
  type        = string

}

## VPN Conection Oracle tunnel1_preshared_key
##variable "tunnel1_preshared_key" {
##  default     = "7wrtqrh5HBZHD0LyXaPamWzCQt2q74lqH8UCEpz8qcIFWcv7af4DLDE8opAy29xQ"
##  description = "Chave tunnel1"
##  type        = string
##}
