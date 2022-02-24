# Infraestrutura networking

Repositório utilizado para criacao e configuracao dos seguintes servicos/recursos;

•	vpc - Biviholding
•	subnet - PROD | HML | DEV
•	route table - Public | Private
•	group security - Default 
•	nat gateway - Utilizado por route table Private 
•	interner gateway - utilizado por route table Public
•   VPN Site to Site - Azure | Oracle | Civitas 


Cada Diretório é seguimentada por organizacoes da AWS;

![Terraform Version](https://img.shields.io/badge/Terraform-v1.0.2-%237B42BC)
![aws-cli](https://img.shields.io/badge/aws--cli-v2.2.45-%237B42BC)


Repositótio para deploy networking.

## Pré-requisitos

Para que possamos subir networking a partir da nossa máquina, é necessário instalar os pré-requisitos abaixo:

AWS-Cli:

- [Windows](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2-windows.html)
- [Mac OS](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2-mac.html)
- [Linux](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2-linux.html)

Terraform:

- [Download](https://www.terraform.io/downloads.html)

```zsh
## Overview do Repositório

├── organization-bi                         # → networking VPC 
│   ├── main.tf 
│   ├── output.tf
│   ├── vpc.tf
│   ├── vpn.tf
│   └── variable.tf

├── organization-inovacao                        # → networking VPC 
│   ├── main.tf 
│   ├── output.tf
│   ├── vpc.tf
│   ├── vpn.tf
│   └── variable.tf

├── organization-raiz                        # → networking VPC Biviholding
│   ├── main.tf 
│   ├── variable.tf
│   └── vpc-biviholding.tf 


├── organization-trisul                        # → networking VPC 
│   ├── main.tf 
│   ├── output.tf
│   ├── vpc.tf
│   ├── vpn.tf
│   └── variable.tf

├── README.md
```

```zsh
Infraestrutura networking
├── README.md

```

## Environments/Branches

```

```zsh
- Prod

$ terraform validate
$ terraform plan 
$ terraform apply 
$ terraform destroy

```

## Diagrama
Em desenvolvimento

---
