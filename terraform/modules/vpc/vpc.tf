resource "aws_vpc" "project_vpc" {
    cidr_block = "171.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags {
        Name = "${var.project_name}-vpc"
    }
}

resource "aws_internet_gateway" "gw" {
    vpc_id = "${aws_vpc.project_vpc.id}"
    tags {
        Name = "${var.project_name}-igw"
    }
}

# Route to Internet Gateway
resource "aws_route" "internet_access" {
    route_table_id         = "${aws_vpc.project_vpc.main_route_table_id}"
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = "${aws_internet_gateway.gw.id}"
}

# Elastic IP
resource "aws_eip" "vpc_eip" {
    vpc      = true
    depends_on = ["aws_internet_gateway.gw"]
    tags {
        Name = "${var.project_name}-nat"
    }
}