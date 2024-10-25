provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraform-instance-1" {
  ami           = "ami-04a37924ffe27da53"
  instance_type = "t2.micro"
  key_name      = "jenkins"
  tags = {
    Name  = "terraform-cicd-EC2-1"
    appid = "345"
    env   = "dev"
  }
  availability_zone = "ap-south-1a"
}

/*resource "aws_instance" "terraform-instance-2" {
  ami           = "ami-04a37924ffe27da53"
  instance_type = "t2.micro"
  key_name      = "jenkins"
  tags = {
    Name = "terraform-cicd-Ec2-2"

  }
  availability_zone = "ap-south-1a"
}*/
