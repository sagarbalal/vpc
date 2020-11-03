resource "aws_route_table" "testRT" {
    vpc_id = aws_vpc.test.id
    route {
        cidr_block = "10.0.1.0/24"
        gateway_id = aws_internet_gateway.testIG.id
    }
    tags = {
        name = "connected to the testIG"
    }
}

resource "aws_route_table_association" "smap" {
    subnet_id = aws_subnet.publicS.id
    route_table_id = aws_route_table.testRT.id
}

resource "aws_route_table_association" "gmap" {
    gateway_id = aws_internet_gateway.testIG.id
    route_table_id = aws_route_table.testRT.id
}