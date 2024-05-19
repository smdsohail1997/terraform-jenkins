terraform {
  required_providers {
    # Define your required providers here...
  }
  auto_approve = false
}

resource "aws_instance" "terraform-instance-1" {
  ami           = var.my-ami
  instance_type = var.my-instance-type
  key_name      = var.my-key-value
  count = 4
  tags = {
    Name  = "${var.my-tag}-${count.index +1}"
    appid = var.app-id
    env   = "dev"
  }
  availability_zone = var.my-availabilityzone
}
