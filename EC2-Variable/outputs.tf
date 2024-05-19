output "instance-id" {
    value = aws_instance.terraform-instance-1.*.id
  
}

output "instace-pvt-ip" {
    value = aws_instance.terraform-instance-1.*.private_ip
  
}

output "instance-pub-ip" {
    value = aws_instance.terraform-instance-1.*.public_ip
  
}

output "instance-type" {
    value = aws_instance.terraform-instance-1.*.instance_type
  
}
