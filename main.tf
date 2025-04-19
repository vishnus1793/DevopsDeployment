resource "aws_instance" "portfolio_instance" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  key_name      = "portfolio-key" # replace with your key pair name

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install docker -y
              sudo yum install git -y
              sudo service docker start
              sudo usermod -a -G docker ec2-user
              git clone https://github.com/vishnus1793/PortFolio.git
              cd PortFolio
              docker build -t portfolio .
              docker run -d -p 80:80 portfolio
              EOF

  tags = {
    Name = "portfolio-instance"
  }
}
