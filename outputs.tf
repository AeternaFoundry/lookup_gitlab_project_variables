output "project_variables_lookup_id" {
  description = "Map of id values across all project_variables_lookup, keyed the same as var.project_variables_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_project_variables.project_variables_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_variables_lookup_environment_scope" {
  description = "Map of environment_scope values across all project_variables_lookup, keyed the same as var.project_variables_lookup except keys with no environment_scope are omitted"
  value       = { for k, v in data.gitlab_project_variables.project_variables_lookup : k => v.environment_scope if v.environment_scope != null && length(v.environment_scope) > 0 }
}
output "project_variables_lookup_project" {
  description = "Map of project values across all project_variables_lookup, keyed the same as var.project_variables_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_project_variables.project_variables_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_variables_lookup_variables" {
  description = "Map of variables values across all project_variables_lookup, keyed the same as var.project_variables_lookup except keys with no variables are omitted"
  value       = { for k, v in data.gitlab_project_variables.project_variables_lookup : k => v.variables if v.variables != null && length(v.variables) > 0 }
}

