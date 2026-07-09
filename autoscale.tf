resource "aws_lb_target_group" "tg" {

  name = "project-tg"

  port     = 80
  protocol = "HTTP"

  vpc_id = aws_vpc.main.id

  health_check {
    path = "/"
  }
}
resource "aws_lb_listener" "listener" {

  load_balancer_arn = aws_lb.alb.arn

  port     = 80
  protocol = "HTTP"

  default_action {

    type = "forward"

    target_group_arn = aws_lb_target_group.tg.arn
  }
}
resource "aws_launch_template" "web_lt" {

  image_id = data.aws_ami.amazon_linux.id

  instance_type = "t2.micro"

  vpc_security_group_ids = [
    aws_security_group.alb_sg.id
  ]
}
resource "aws_autoscaling_group" "asg" {

  min_size = 2

  max_size = 4

  desired_capacity = 2

  launch_template {

    id = aws_launch_template.web_lt.id

    version = "$Latest"
  }

  vpc_zone_identifier = [

    aws_subnet.private_az1.id,

    aws_subnet.private_az2.id
  ]
}