variable "company_name" {
  type        = string
  description = "Your comapny name for default syntax values"
}

variable "production" {
  default     = false
  type        = bool
  description = "A true/false value for you to create a production environment"
}

variable "region" {
  default     = "us-west-2"
  type        = string
  description = <<-EOF
    The region you want to host your infrastructure in:
    us-west1 - California
    us-west2 - Oregon 
    us-east1 - Virginia # Don't recommend to be here unless you want to beta test new changes
    us-east2 - Ohio
  EOF
}