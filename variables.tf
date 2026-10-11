variable "project_variables_lookup" {
  description = <<EOT
Map of project_variables_lookup, attributes below
Required:
    - project
Optional:
    - environment_scope
EOT

  type = map(object({
    project           = string
    environment_scope = optional(string)
  }))
}

