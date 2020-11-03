resource "aws_internet_gateway" "testIG" {
    vpc_id = aws_vpc.test.vpc_id
    tags ={
        name = "connected to the test VPC"
    }
}