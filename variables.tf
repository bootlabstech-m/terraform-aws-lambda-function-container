variable "lambda_role_name" {
  description = "The name of the IAM role used by the Lambda function to execute."
  type        = string
}

variable "no_of_functions" {
  description = "The number of Lambda functions to create."
  type        = number
}

variable "iam_policy_for_lambda_name" {
  description = "The name of the IAM policy to attach to the Lambda execution role."
  type        = string
}

variable "name" {
  description = "A list of Lambda function names. Each should correspond to a container-based deployment."
  type        = list(string)
}

variable "timeout" {
  description = "The function execution timeout in seconds."
  type        = number
}

variable "memory_size" {
  description = "The amount of memory (in MB) allocated to the Lambda function."
  type        = number
}

variable "envvariables" {
  description = "A map of environment variables to set in the Lambda function."
  type        = map(string)
}

variable "image_uri" {
  description = "The full URI of the Lambda-compatible container image hosted in Amazon ECR."
  type        = string
}

variable "package_type" {
  description = "The deployment package type for the Lambda function. Use 'Image' for container-based deployment."
  default     = "Image"
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role that the Lambda function assumes when it executes."
  type        = string
}

variable "region" {
  description = "The AWS region where the Lambda function and related resources will be deployed."
  type        = string
}