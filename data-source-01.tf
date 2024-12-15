# # This data source is used to retrieve a list of GitHub repositories using a search query.
# data "github_repositories" "example" {
#   query = "user:Sk-Samim"
#   include_repo_id = true
# }