variable "project" { description = "Name prefix for resources"; type = string; default = "ott" }
variable "region"  { description = "AWS region"; type = string; default = "ap-south-1" }

variable "az_suffixes" {
  description = "Two AZ suffixes to use"
  type        = list(string)
  default     = ["a", "b"]
}

variable "vpc_cidr" { description = "VPC CIDR block"; type = string; default = "10.0.0.0/16" }

variable "public_subnet_cidrs" {
  description = "Frontend (public) subnets [A, B]"
  type        = list(string)
  default     = ["10.0.0.0/20", "10.0.16.0/20"]
}

variable "private_backend_cidrs" {
  description = "Backend (private) subnets [A, B]"
  type        = list(string)
  default     = ["10.0.32.0/20", "10.0.48.0/20"]
}

variable "private_db_cidrs" {
  description = "Database (private) subnets [A, B]"
  type        = list(string)
  default     = ["10.0.64.0/20", "10.0.80.0/20"]
}

variable "instance_type"  { description = "EC2 instance type"; type = string; default = "t3.micro" }
variable "allow_ssh_cidr" { description = "CIDR allowed for SSH to frontend"; type = string; default = "0.0.0.0/0" }

# New key pair settings (no manual key needed)
variable "key_name_prefix" {
  description = "Prefix for generated EC2 key pair name"
  type        = string
  default     = "ott-key"
}
