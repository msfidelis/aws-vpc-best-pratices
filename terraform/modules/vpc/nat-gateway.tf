resource "aws_subnet" "internet_subnet_1a" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.54.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}a"

  tags = {
    Name = "${var.project_name}-internet-1a"
  }
}

resource "aws_nat_gateway" "nat" {
    allocation_id   = "${aws_eip.vpc_eip.id}"
    subnet_id       = "${aws_subnet.internet_subnet_1a.id}"
    depends_on      = ["aws_internet_gateway.gw"]

    tags = {
       Name = "${var.project_name}-nat-gateway"
    }
}

resource "aws_route_table" "nat_route_table" {
    vpc_id = "${aws_vpc.project_vpc.id}"

    tags = {
        Name = "${var.project_name}-nat-route-table"
    }
}

resource "aws_route" "private_internet_access" {
	route_table_id          = "${aws_route_table.nat_route_table.id}"
	destination_cidr_block  = "0.0.0.0/0"
	nat_gateway_id          = "${aws_nat_gateway.nat.id}"
}