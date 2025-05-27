output "lightsail_instance_name" {
  value = aws_lightsail_instance.flask.name
}

output "lightsail_public_ip" {
  value = aws_lightsail_static_ip.flask_ip.ip_address
}

output "lightsail_availability_zone" {
  value = aws_lightsail_instance.flask.availability_zone
}

output "lightsail_blueprint_id" {
  value = aws_lightsail_instance.flask.blueprint_id
}

output "lightsail_bundle_id" {
  value = aws_lightsail_instance.flask.bundle_id
}
