## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>", 
  eval = FALSE
)

## ------------------------------------------------------------------------
#  golem::add_module( name = "my_first_module" ) # Name of the module

## ------------------------------------------------------------------------
#  # mod_UI
#  mod_my_first_module_ui <- function(id){
#    ns <- NS(id)
#    tagList(
#  
#    )
#  }
#  
#  mod_my_first_module_server <- function(input, output, session){
#    ns <- session$ns
#  }
#  
#  ## To be copied in the UI
#  # mod_my_first_module_ui("my_first_module_1")
#  
#  ## To be copied in the server
#  # callModule(mod_my_first_module_server, "my_first_module_1")

## ------------------------------------------------------------------------
#  usethis::use_package("pkg")

## ------------------------------------------------------------------------
#  usethis::use_test( "app" )

## ------------------------------------------------------------------------
#  golem::browser_button()

## ------------------------------------------------------------------------
#  golem::add_js_file("script")
#  golem::add_js_handler("script")
#  golem::add_css_file("custom")

## ------------------------------------------------------------------------
#  usethis::use_vignette("shinyexample")
#  devtools::build_vignettes()

## ------------------------------------------------------------------------
#  usethis::use_travis()
#  usethis::use_appveyor()
#  usethis::use_coverage()

## ----eval = TRUE---------------------------------------------------------
options( "golem.app.prod" = TRUE)
golem::cat_dev("hey\n")
options( "golem.app.prod" = FALSE)
golem::cat_dev("hey\n")

## ----eval = TRUE---------------------------------------------------------
log_dev <- golem::make_dev(log)
log_dev(10)
options( "golem.app.prod" = TRUE)
log_dev(10)

