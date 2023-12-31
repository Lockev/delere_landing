variable "aws_region" {
  default = "eu-west-1"
  type    = string
}

variable "access_key" {
  sensitive = true
  type      = string
}

variable "secret_key" {
  sensitive = true
  type      = string
}

variable "bucket_name" {
  type = string
}

variable "domain_zone_id" {
  type = string
}
