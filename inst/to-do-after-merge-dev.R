desc::desc_bump_version("patch")
rstudioapi::navigateToFile("NEWS.md")
devtools::build_readme()
gert::git_add(c("DESCRIPTION", "NEWS.md", "README.md", "NEWS.md"))
gert::git_commit("chore: version bump & news update")
gert::git_push()
