/**
 * # Terraform AWS Label Module
 *
 * This is a terraform modum to generate consistent naming and tags for your
 * resources.
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
