resource "aws_subnet" "database_subnet_1a" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.51.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "${var.aws_region}a"

  tags = {
    Name = "${var.project_name}-database-1a"
  }
}

resource "aws_subnet" "database_subnet_1b" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.52.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "${var.aws_region}b"

  tags = {
    Name = "${var.project_name}-database-1b"
  }
}

resource "aws_subnet" "database_subnet_1c" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.53.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "${var.aws_region}c"

  tags = {
    Name = "${var.project_name}-database-1c"
  }
}
