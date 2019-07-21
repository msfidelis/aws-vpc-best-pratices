resource "aws_subnet" "public_subnet_1a" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.48.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}a"

  tags {
    Name = "${var.project_name}-public-1a"
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.49.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}b"

  tags {
    Name = "${var.project_name}-public-1b"
  }
}


resource "aws_subnet" "public_subnet_1c" {
  vpc_id                  = "${aws_vpc.project_vpc.id}"
  cidr_block              = "171.0.50.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}c"

  tags {
    Name = "${var.project_name}-public-1c"
  }
}
