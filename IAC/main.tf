resource "aws_instance" "web_server" {
  ami           = "ami-08f9a9c699d2ab3f9"
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer"
  }
}
