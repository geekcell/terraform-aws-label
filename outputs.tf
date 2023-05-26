output "global_prefix" {
  description = "Contains the namespace, environment and stage for your infrastructure."
  value       = local.global_prefix
}

output "belongs_to" {
  description = "Contains the namespace, environment, stage and implementation detail for your infrastructure."
  value       = local.belongs_to
}

output "tags" {
  description = "Normalized Tags."
  value       = local.tags
}
