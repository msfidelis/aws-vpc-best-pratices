<h1 align="center">Welcome to AWS VPC Best Pratices 👋</h1>
<p>
  <img src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/msfidelis/tempo">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" target="_blank" />
  </a>
  <a href="https://github.com/msfidelis/tempo">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" target="_blank" />
  </a>
  <a href="https://twitter.com/fidelissauro">
    <img alt="Twitter: fidelissauro" src="https://img.shields.io/twitter/follow/fidelissauro.svg?style=social" target="_blank" />
  </a>
</p>

> Personal compilation for best practices for VPC Network architectures on AWS to improve performance, high availability and security for your apps

### 🏠 [Homepage](https://github.com/msfidelis/aws-vpc-best-pratices)

## Network Tips

![Network](.github/vpc.jpg)

### Using two or more AZ's for high availability

* 
* 
* 

### Don't use main route table

* 
* 
* 

### Deploy public subnets on all AZ's

* Network Load Balancers and Some Network functions needs a public subnets deployed to works fine.
* If you deploy an ALB to balance the traffic between your instances or containers, technically AWS will deploy that service to a public subnet in each Availability Zone you choose to route.
* This publics subnets can be used to deploy bastion hosts, third-part applications, satellite services like monitoring systems, CI/CD Pipeline, Big Data Services to support teams and business dynamically/


### Applications on Private Subnets

* Containers, EC2 should not have accessed directly from the Internet by public IP's.
* The application layer must be served by a single access point, such as an Application Load Balancer, Classic Load Balancer, or Network Load Balancer.
* Nginx, HAProxy, Ingress Controllers, API Gateways, ALB, ELB, NLB deployed on Public Subnets must route all DMZ access to private subnets

### VPC Endpoints for AWS Services

* Crete VPC Endpoint to consume AWS services without using a Internet Gateway or NAT Gateway with Internet Access.

* VPC Endpoints can be used to improve latency performance with security with common AWS services like S3, API Gateway, SQS, ECR, SNS, DynamoDB and Load Balancers.

* You can create a microservices gateway using VPC Endpoints for ALB and API Gateway

### Route all egress traffic from private subnets to a NAT Gateway

* Routing all internet traffic to an NAT Gateway Service you 
* 
* 

### Databases subnets with no internet direct access

* 
* 
* 



# Terraform Example

## Install

```sh
terraform init
```

## Usage

```sh
terraform apply
```

## Run tests

```sh
terraform plan
```

## Author

👤 **Matheus Fidelis**

* Twitter: [@fidelissauro](https://twitter.com/fidelissauro)
* Github: [@msfidelis](https://github.com/msfidelis)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/msfidelis/aws-vpc-best-pratices/issues).

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2019 [Matheus Fidelis](https://github.com/msfidelis).<br />
This project is [MIT](https://github.com/msfidelis/aws-vpc-best-pratices/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_