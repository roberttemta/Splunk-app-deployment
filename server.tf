
#creating the instance
resource "aws_instance" "server1" {
  ami           = "ami-0195204d5dce06d99"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.aws_key.key_name
  //key_name      = "virginiakey"
  user_data              = file("server-install.sh")
  vpc_security_group_ids = [aws_security_group.sg1.id]
  subnet_id              = aws_subnet.public1.id

  tags = {
    Name = "splunk-instance"
  }
}
