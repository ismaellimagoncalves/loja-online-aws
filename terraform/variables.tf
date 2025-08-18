variable "aws_region" {
  description = "Região AWS"
  default     = ""
}

variable "ec2_key_name" {
  description = "chave de acesso para a instância EC2"
  type        = string
}

variable "dockerhub_user" {
  description = "Usuário do Docker Hub"
  type        = string
}

variable "dockerhub_image" {
  description = "Nome da imagem Docker Hub"
  type        = string
}
variable "dockerhub_password" {
  description = "Senha do Docker Hub (opcional, se usar login automático)"
  type        = string
  default     = ""
}