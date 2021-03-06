module "vcruntime" {
  source                       = "./modules/repository"
  name                         = "vcruntime"
  cookbook_team                = github_team.vcruntime.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "vcruntime" {
  name        = "vcruntime"
  description = "vcruntime Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "vcruntime-maintainer-1" {
  team_id  = github_team.vcruntime.id
  username = "ramereth"
  role     = "maintainer"
}
