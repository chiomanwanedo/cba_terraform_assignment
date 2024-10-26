resource "aws_launch_template" "launch_config" {
  name                        = "launch_config"
  image_id                    = "ami-03c6b308140d10488"
  instance_type               = var.instance_type 
  key_name                    = var.keyname
}