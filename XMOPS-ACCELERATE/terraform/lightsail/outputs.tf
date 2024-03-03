output "wordpress_instance_public_ip" {
  value = aws_lightsail_static_ip.wordpress_static_ip.ip_address
}

