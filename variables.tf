# Purpose:
# The variables.tf file defines input variables that control the module’s configuration.

# Best Practices:
# - Descriptive Variables: Use meaningful names and description attributes.
# - Default Values: Provide reasonable defaults when possible. For mandatory inputs, omit defaults to enforce explicit user input.
# - Type Constraints and Validation: Use type constraints and validation blocks to catch incorrect inputs early.
# - Group Related Variables: Organize variables logically, adding comments to separate sections if many variables exist.

variable "length" {
  description = "The length of the random name"
  type        = number
  default     = 2
  validation {
    condition     = var.length > 0
    error_message = "The length must be a positive number."
  }
}
