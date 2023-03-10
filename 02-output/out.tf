output "sample" {
    value= "Hello World"
}

output "instance_IP_address" {
    value= aws_instance.ec2.private_ip
}