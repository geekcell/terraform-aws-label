variable "namespace" {
  description = "The namespace to deploy the application into."
  type        = string
}

variable "environment" {
  description = "The environment to deploy the application into."
  type        = string
}

variable "implementation" {
  description = "The implementation to deploy the application into."
  type        = string
}

variable "stage" {
  description = "The stage to deploy the application into."
  type        = string
  validation {
    condition     = length(var.stage) == 3
    error_message = "The stage must be 3 characters."
  }
}
