output "ec2_public_ip" {
  description = "IP público da EC2"
  value       = aws_instance.loja_ec2.public_ip
}
