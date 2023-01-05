module "full" {
  source = "../../"

  environment    = "geekcell"
  namespace      = "auth"
  stage          = "pro"
  implementation = "backend"
}
