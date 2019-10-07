resource "aws_subnet" "public_subnet_1a" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.48.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}a"

  tags = {
    Name = "${var.project_name}-public-1a"
  }
}

resource "aws_route_table_association" "public_subnet_1a_association" {
    subnet_id       = "${aws_subnet.public_subnet_1a.id}"
    route_table_id  = "${aws_route_table.igw_route_table.id}"
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.49.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}b"

  tags = {
    Name = "${var.project_name}-public-1b"
  }
}

resource "aws_route_table_association" "public_subnet_1b_association" {
    subnet_id       = "${aws_subnet.public_subnet_1b.id}"
    route_table_id  = "${aws_route_table.igw_route_table.id}"
}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.50.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}c"

  tags = {
    Name = "${var.project_name}-public-1c"
  }
}

resource "aws_route_table_association" "public_subnet_1c_association" {
    subnet_id       = "${aws_subnet.public_subnet_1c.id}"
    route_table_id  = "${aws_route_table.igw_route_table.id}"
}