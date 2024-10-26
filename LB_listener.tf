resource "aws_lb_listener" "pub_targetGroup" {
  load_balancer_arn = aws_lb.pub_loadbalancer.arn 
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.pub_servers.arn
}
}