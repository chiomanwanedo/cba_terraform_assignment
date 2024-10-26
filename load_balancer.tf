resource "aws_lb" "pub_loadbalancer" {
  name            = "Publoadbalancer"
  subnets         = [aws_subnet.c_publicSubnet01.id, 
                    aws_subnet.c_publicSubnet02.id
                    ]
  security_groups = [aws_security_group.sg.id]
  internal        = false
}


resource "aws_lb" "pri_loadbalancer" {
  name            = "PriLoadbalancer"
  subnets         = [aws_subnet.c_privateSubnet01.id, 
                    aws_subnet.c_privateSubnet02.id
                    ]
  security_groups = [aws_security_group.sg.id]
  internal        = true
}