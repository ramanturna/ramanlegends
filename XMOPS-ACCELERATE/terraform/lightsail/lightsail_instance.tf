resource "aws_lightsail_instance" "wordpress_instance" {
  name              = "wordpress-instance"
  availability_zone = "us-east-1a"
  blueprint_id      = "wordpress" # WordPress blueprint
  bundle_id         = "medium_2_0" # Adjust based on required performance and cost

  tags = {
    Name = "WordPressInstance"
  }
}

resource "aws_lightsail_static_ip" "wordpress_static_ip" {
  name = "wordpress-static-ip"
}

resource "aws_lightsail_static_ip_attachment" "wordpress_ip_attachment" {
  static_ip_name = aws_lightsail_static_ip.wordpress_static_ip.name
  instance_name  = aws_lightsail_instance.wordpress_instance.name
}
