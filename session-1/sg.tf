resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = "allowing all ports" # you can keep this in variable
 
  ingress {
    description      = "Allowing all inbounds traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" #all protocals
    cidr_blocks      = var.sg_cidr
  }
}