terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_lightsail_instance" "flask" {
  name              = "flask-monitoring-instance"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_22_04"
  bundle_id         = "micro_2_0"
  key_pair_name     = "devkey"
}

resource "aws_lightsail_static_ip" "flask_ip" {
  name = "flask-monitoring-ip"
}

resource "aws_lightsail_static_ip_attachment" "attach_ip" {
  instance_name  = aws_lightsail_instance.flask.name
  static_ip_name = aws_lightsail_static_ip.flask_ip.name
}
