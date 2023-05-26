/**
 * # Terraform AWS Label
 *
 * This Terraform module provides a preconfigured solution for implementing
 * consistent tagging and naming conventions for all of your AWS resources.
 * Having well-defined and consistent tags and names for your resources can
 * help you better organize, manage, and track your infrastructure. This module
 * makes it easy to apply your desired naming and tagging conventions to all
 * of your resources in a uniform and automated manner.
 *
 * Our team has extensive experience working with AWS resources and has
 * optimized this module to provide the best possible experience for users.
 * The module encapsulates all necessary configurations, making it easy to use
 * and integrate into your existing AWS environment. Whether you are just
 * getting started with AWS resource management or looking for a more efficient
 * way to implement naming and tagging conventions, this Terraform module
 * provides a preconfigured solution for better organization and tracking
 * of your resources.
 *
 * It contains 4 variables.
 *
 * 1. namespace
 * 2. environment
 * 3. stage
 * 4. implementation
 *
 * We use it in our projects for names like e.g.
 *
 * **geekcell-auth-pro-backend**
 *
 * 1. geekcell = namespace, e.g. your product
 * 2. auth = environment, e.g. your service
 * 3. pro = stage, e.g.: pro or dev
 * 4. backend = subcomponent of your product.
 *
 * In addition, tags are created for you, which you can attach to your
 * resources.
 */
locals {
  global_prefix = format(
    "%s-%s-%s",
    var.namespace,
    var.environment,
    var.stage
  )

  belongs_to = format(
    "%s-%s",
    local.global_prefix,
    var.implementation
  )

  tags = {
    Namespace      = var.namespace
    Environment    = var.environment
    Stage          = var.stage
    Implementation = var.implementation
    Terraform      = "true"
  }
}
