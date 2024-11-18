resource "aws_instance" "ec2-from-terraform-week8" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name

  tags = {
    Name = "ec2-from-terraform-week8"
  }
}

resource "aws_eip" "my_eip" {
  instance = aws_instance.ec2-from-terraform-week8.id
}
