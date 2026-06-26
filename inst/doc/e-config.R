## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  purl = FALSE
)
library(golem)
x <- file.path(
  tempdir(),
  "golex"
)
unlink(x, TRUE, TRUE)

x <- golem::create_golem(x, package_name = "golex", open = FALSE)
old <- setwd(x)
knitr::opts_knit$set(root.dir = x)

