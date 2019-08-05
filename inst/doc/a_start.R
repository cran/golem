## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>", 
  eval = FALSE
)

## ------------------------------------------------------------------------
#  remotes::install_github("Thinkr-open/golem")

## ------------------------------------------------------------------------
#  golem::create_golem(path = "path/to/package")

## ------------------------------------------------------------------------
#  golem::fill_desc(
#    pkg_name = "shinyexample", # The Name of the package containing the App
#    pkg_title = "PKG_TITLE", # The Title of the package containing the App
#    pkg_description = "PKG_DESC.", # The Description of the package containing the App
#    author_first_name = "AUTHOR_FIRST", # Your First Name
#    author_last_name = "AUTHOR_LAST",  # Your Last Name
#    author_email = "AUTHOR@MAIL.COM",      # Your Email
#    repo_url = NULL # The (optional) URL of the GitHub Repo
#  )

## ------------------------------------------------------------------------
#  golem::set_golem_options()

## ----eval = FALSE--------------------------------------------------------
#  usethis::use_mit_license( name = "Golem User" )  # You can set another licence here
#  usethis::use_readme_rmd( open = FALSE )
#  usethis::use_code_of_conduct()
#  usethis::use_lifecycle_badge( "Experimental" )
#  
#  usethis::use_news_md( open = FALSE )
#  usethis::use_git()

## ------------------------------------------------------------------------
#  usethis::use_data_raw()

## ------------------------------------------------------------------------
#  golem::use_recommended_tests()

## ------------------------------------------------------------------------
#  golem::use_recommended_deps("")

## ------------------------------------------------------------------------
#  # Remove current favicon
#  golem::remove_favicon()
#  # Add a new one
#  golem::use_favicon( path = "path/to/favicon")

## ------------------------------------------------------------------------
#  golem::use_utils_ui()
#  golem::use_utils_server()

## ------------------------------------------------------------------------
#  rstudioapi::navigateToFile("dev/02_dev.R")

