resource "aws_subnet" "publicS" {
    vpc_id = aws_vpc.test.id
    cidr_block = "10.0.1.0/24"
    tags ={
        name = "publicS"
    }
}

resource "aws_subnet" "privateS1" {
    vpc_id = aws_vpc.test.id
    cidr_block = "10.0.2.0/24"
    tags ={
        name = "privateS1"
    }
}