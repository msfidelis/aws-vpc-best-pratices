resource "aws_route_table" "closed_route_table" {
    vpc_id = "${aws_vpc.project_vpc.id}"

    tags {
        Name = "${var.project_name}-closed-route-table"
    }
}

// resource "aws_route" "closed_internet_access" {
//     route_table_id         = "${aws_route_table.closed_route_table.id}"
//     // destination_cidr_block = "0.0.0.0/0"
//     gateway_id             = "${aws_internet_gateway.gw.id}"
// }

