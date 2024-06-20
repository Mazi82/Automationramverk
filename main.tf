provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "app_instance" {
  ami           = "ami-0c0e147c706360bd7"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  key_name      = "my-key-pair" 

  tags = {
    Name = "app-instance"
  }

}

output "instance_ip" {
  value = aws_instance.app_instance.public_ip
}