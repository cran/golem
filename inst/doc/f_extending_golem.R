## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## -----------------------------------------------------------------------------
#  no_dev <- function(path, package_name, ...) {
#    fs::dir_delete("dev")
#  }
#  create_golem("ici", project_hook = no_dev)

## -----------------------------------------------------------------------------
#  new_css <- function(path, package_name, ...) {
#    css_path <- fs::path_abs("inst/app/www/custom.css")
#  
#    fs::file_create(css_path)
#  
#    write_there <- function(...) {
#      write(..., file = css_path, append = TRUE)
#    }
#  
#    write_there("body {")
#    write_there("    background-color:red;")
#    write_there("}")
#  
#    cli_cat_bullet("CSS generated")
#  }
#  
#  create_golem("ici", project_hook = new_css)

## -----------------------------------------------------------------------------
#  my_tmpl <- function(name, path, export, ...) {
#    # Define a template that only write the name of the
#    # module in the file
#    write(name, path)
#  }
#  golem::add_module(name = "custom", module_template = my_tmpl)
#  
#  my_other_tmpl <- function(name, path, ...) {
#    # Copy and paste a file from somewhere else
#    file.copy(..., path)
#  }
#  golem::add_module(name = "custom", module_template = my_other_tmpl)

## -----------------------------------------------------------------------------
#  my_tmpl <- function(path, ...) {
#    # Define a template that only write the name of the
#    # module in the file
#    write_there <- function(...) {
#      write(..., file = path, append = TRUE)
#    }
#  
#    write_there("body {")
#    write_there("    background-color:red;")
#    write_there("}")
#  }
#  golem::add_css_file(name = "custom", template = my_tmpl)

## ----eval = FALSE-------------------------------------------------------------
#  withr::with_envvar(
#    c("GOLEM_MAINTENANCE_ACTIVE" = TRUE),
#    {
#      golem::run_dev()
#    }
#  )

## ----eval = FALSE-------------------------------------------------------------
#  Sys.setenv("GOLEM_MAINTENANCE_ACTIVE" = TRUE)
#  golem::run_dev()

## -----------------------------------------------------------------------------
#  run_app <- function(
#      onStart = NULL,
#      options = list(),
#      enableBookmarking = NULL,
#      uiPattern = "/",
#      ...) {
#    with_golem_options(
#      app = shinyApp(
#        ui = app_ui,
#        server = app_server,
#        onStart = onStart,
#        options = options,
#        enableBookmarking = enableBookmarking,
#        uiPattern = uiPattern
#      ),
#      golem_opts = list(...),
#      maintenance_page = tagList(
#        fluidRow(
#          h1("Under maintenance"),
#          span("Coming soon...")
#        )
#      )
#    )
#  }

## -----------------------------------------------------------------------------
#  run_app <- function(
#      onStart = NULL,
#      options = list(),
#      enableBookmarking = NULL,
#      uiPattern = "/",
#      ...) {
#    with_golem_options(
#      app = shinyApp(
#        ui = app_ui,
#        server = app_server,
#        onStart = onStart,
#        options = options,
#        enableBookmarking = enableBookmarking,
#        uiPattern = uiPattern
#      ),
#      golem_opts = list(...),
#      maintenance_page = shiny::htmlTemplate(
#        filename = app_sys(
#          "custom_maintenance_page.html"
#        )
#      )
#    )
#  }

