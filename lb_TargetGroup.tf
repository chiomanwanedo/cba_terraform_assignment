resource "aws_lb_target_group" "pub_servers" {
  name        = "public-servers"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.c_vpc.id

  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 2
    interval            = 30
    timeout             = 5
    matcher             = "200-399"
  }
}




resource "aws_lb_target_group" "pri_servers" {
  name        = "private-web-servers"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.c_vpc.id

  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 2
    interval            = 30
    timeout             = 5
    matcher             = "200-399"
  }
}

