resource "aws_spot_instance_request" "node1" {
  ami           = "ami-04af47c425b1eda74"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0d0c823795db46c70"]
  wait_for_fulfillment= true
  
  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_ec2_tag" "node1" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "prom-test-server"
}

resource "aws_spot_instance_request" "node2" {
  ami           = "ami-04af47c425b1eda74"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0d0c823795db46c70"]
  
  
  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_ec2_tag" "node2" {
  resource_id = aws_spot_instance_request.node2.spot_instance_id
  key         = "Name"
  value       = "prom-test-node"
}