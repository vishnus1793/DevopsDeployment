provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "portfolio_instance" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

key_name = "portfolio-key" 
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install docker -y
              sudo service docker start
              sudo usermod -a -G docker ec2-user
              docker login -u vishnus1793 -p 3q!jJC.dasQxdDC
              docker pull vishnus1793/portfolio:latest
              docker run -d -p 80:80 vishnus1793/portfolio
              EOF

  tags = {
    Name = "portfolio-instance"
  }
}
