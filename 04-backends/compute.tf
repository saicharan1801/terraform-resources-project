resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  root_block_device {
    delete_on_termination = true
    volume_size = 10
    volume_type = "gp3"
  }
  tags = {
    Name      = "web-instance"
    ManagedBy = "Terraform"
    Project   = "04-project"
  } 
}