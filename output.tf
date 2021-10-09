output publicip {
  value       = aws_instance.instance.private_ip
  description = "description"
}

output subnetid {
  value       = aws_instance.instance.subnet_id
  description = "description"
}

output userdata {
  value       = aws_instance.instance.user_data
  description = "description"
}


output securitygroup {
  value       = aws_instance.instance.security_groups
  description = "description"
}
