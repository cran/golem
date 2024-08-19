## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## -----------------------------------------------------------------------------
#  install.packages("golem")

## -----------------------------------------------------------------------------
#  remotes::install_github("Thinkr-open/golem")

## ----echo=FALSE, out.width="80%", fig.align="center", eval=TRUE---------------
knitr::include_graphics("golemtemplate.png")

## -----------------------------------------------------------------------------
#  golem::create_golem(path = "path/to/package")

## ----include = FALSE, eval = TRUE, error = TRUE-------------------------------
x <- fs::path(tempdir(), "golex")
try(fs::dir_delete(x), silent = TRUE)
golem::create_golem(path = x, package_name = "golex", open = FALSE)

## ----echo = FALSE, eval = TRUE------------------------------------------------
z <- capture.output(fs::dir_tree(x))
z <- z[-1]
w <- lapply(
  z,
  function(x) {
    cat(x, "\n")
  }
)

## -----------------------------------------------------------------------------
#  golem::fill_desc(
#    pkg_name = "shinyexample", # The name of the golem package containing the app (typically lowercase, no underscore or periods)
#    pkg_title = "PKG_TITLE", # What the Package Does (One Line, Title Case, No Period)
#    pkg_description = "PKG_DESC.", # What the package does (one paragraph).
#    authors = person(
#      given = "AUTHOR_FIRST", # Your First Name
#      family = "AUTHOR_LAST", # Your Last Name
#      email = "AUTHOR@MAIL.COM", # Your email
#      role = c("aut", "cre"), # Your role (here author/creator)
#      set_options = TRUE # Set the global golem options
#      ),
#    repo_url = NULL, # The URL of the GitHub repo (optional),
#    pkg_version = "0.0.0.9000" # The version of the package containing the app
#  )

## ----eval = FALSE-------------------------------------------------------------
#  ## See ?usethis for more information
#  usethis::use_mit_license("Golem User") # You can set another license here
#  usethis::use_readme_rmd(open = FALSE)
#  usethis::use_code_of_conduct()
#  usethis::use_lifecycle_badge("Experimental")
#  usethis::use_news_md(open = FALSE)

## -----------------------------------------------------------------------------
#  golem::use_recommended_tests()

## -----------------------------------------------------------------------------
#  golem::use_recommended_deps()

## -----------------------------------------------------------------------------
#  # Remove current favicon
#  golem::remove_favicon()
#  # Add a new one
#  golem::use_favicon(path = "path/to/favicon")

## -----------------------------------------------------------------------------
#  golem::use_utils_ui(with_test = TRUE)
#  golem::use_utils_server(with_test = TRUE)

## -----------------------------------------------------------------------------
#  golem::run_dev()

## -----------------------------------------------------------------------------
#  rstudioapi::navigateToFile("dev/02_dev.R")

## ----eval = TRUE, include = FALSE---------------------------------------------
try(fs::dir_delete(x), silent = TRUE)

