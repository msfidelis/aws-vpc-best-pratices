resource "aws_subnet" "private_subnet_1a" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.0.0/20"
  map_public_ip_on_launch = false
  availability_zone       = "${var.aws_region}a"

  tags {
    Name = "${var.project_name}-private-1a"
  }
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.16.0/20"
  map_public_ip_on_launch = false
  availability_zone       = "${var.aws_region}b"

  tags {
    Name = "${var.project_name}-private-1b"
  }
}


resource "aws_subnet" "private_subnet_1c" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.32.0/20"
  map_public_ip_on_launch = false
  availability_zone       = "${var.aws_region}c"

  tags {
    Name = "${var.project_name}-private-1c"
  }
}
