variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = ""
}

variable "ec2_key_name" {
  description = "Chave de acesso para a instância EC2"
  type        = string
  default     = ""
}
