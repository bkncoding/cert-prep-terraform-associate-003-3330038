resource "aws_instance" "ec2-instance1" {
  ami           = "ami-0cb91c7de36eed2cb"
  instance_type = "t3.micro"

  tags = {
      Name = "demo-server1"
  }  
}

resource "aws_instance" "ec2-instance2" {
  provider = aws.west
  ami           = "ami-00c257e12d6828491"
  instance_type = "t3.micro"
  
  tags = {
      Name = "demo-server2"
  }  
}