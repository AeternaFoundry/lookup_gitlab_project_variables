data "gitlab_project_variables" "project_variables_lookup" {
  for_each = var.project_variables_lookup

  project           = each.value.project
  environment_scope = each.value.environment_scope
}

