output "sample" {
    value= "Hello World"
}

output "instance_IP_address" {
    value= aws_instance.server.private_ip
}