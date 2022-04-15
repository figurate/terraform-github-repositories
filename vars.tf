variable "repository_names" {
  description = "A list of repository names to manage"
  type        = list(string)
  default     = []
}

variable "visibility" {
  description = "Set repositories visibility (public or private)"
  default     = "public"
  validation {
    condition     = var.visibility == "public" || var.visibility == "private"
    error_message = "Visibility must be public or private."
  }
}

variable "template" {
  description = "A template repository used to create the repositories (owner/name)"
  default = null
}
