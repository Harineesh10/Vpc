
output "vpc_id"     { value = aws_vpc.main.id }
output "efs_id"     { value = aws_efs_file_system.this.id }

output "subnets" {
  value = {
    frontend = { a = aws_subnet.frontend["a"].id, b = aws_subnet.frontend["b"].id }
    backend  = { a = aws_subnet.backend["a"].id,  b = aws_subnet.backend["b"].id }
    database = { a = aws_subnet.database["a"].id, b = aws_subnet.database["b"].id }
  }
}

output "public_ips" {
  value = {
    a = aws_instance.frontend_a.public_ip
    b = aws_instance.frontend_b.public_ip
  }
}

output "key_name" {
  value = aws_key_pair.generated.key_name
}

output "private_key_path" {
  value     = local_file.private_key.filename
  sensitive = true
}

output "public_key_path" {
  value = local_file.public_key.filename
}
