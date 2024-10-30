# Specify the provider and region for AWS
provider "aws" {
  region = "us-east-1"  # Set the AWS region to US East (N. Virginia)
}

# Create a security group to allow HTTP traffic
resource "aws_security_group" "web_sg" {
  name        = "web_security_group"  # Name of the security group
  description = "Allow HTTP traffic"   # Description of the security group

  # Ingress rules to allow incoming traffic on port 80 (HTTP)
  ingress {
    from_port   = 80                     # Allow traffic from port 80
    to_port     = 80                     # Allow traffic to port 80
    protocol    = "tcp"                  # Protocol type (TCP)
    cidr_blocks = ["0.0.0.0/0"]          # Allow traffic from anywhere
  }

  # Egress rules to allow all outbound traffic
  egress {
    from_port   = 0                       # Allow all outbound ports
    to_port     = 0                       # Allow all outbound ports
    protocol    = "-1"                    # Allow all protocols
    cidr_blocks = ["0.0.0.0/0"]           # Allow all outbound traffic
  }

  # Tags for identifying the security group
  tags = {
    Name = "web_security_group"           # Tag to name the security group
  }
}

# Create an EC2 instance
resource "aws_instance" "web_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Specify the Amazon Machine Image (AMI) ID
  instance_type = "t2.micro"               # Define the instance type (t2.micro is eligible for the free tier)
  
  # Associate the instance with the created security group
  security_groups = [aws_security_group.web_sg.name]

  # Tags for identifying the EC2 instance
  tags = {
    Name = "MyWebServer"                   # Tag to name the EC2 instance
  }
}

# Output the public IP of the EC2 instance
output "instance_ip" {
  value = aws_instance.web_instance.public_ip  # Display the public IP of the instance after creation
}
