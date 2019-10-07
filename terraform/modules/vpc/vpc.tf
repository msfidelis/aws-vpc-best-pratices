resource "aws_vpc" "project_vpc" {
    cidr_block = "171.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name = "${var.project_name}-vpc"
    }
}

# Elastic IP
resource "aws_eip" "vpc_eip" {
    vpc      = true
    depends_on = ["aws_internet_gateway.gw"]
    tags = {
        Name = "${var.project_name}-nat"
    }
}