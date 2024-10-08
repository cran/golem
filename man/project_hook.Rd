% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/templates.R
\name{project_hook}
\alias{project_hook}
\title{Project Hook}
\usage{
project_hook(path, package_name, ...)
}
\arguments{
\item{path}{Name of the folder to create the package in.
This will also be used as the package name.}

\item{package_name}{Package name to use. By default, \code{{golem}} uses
\code{basename(path)}. If \code{path == '.'} & \code{package_name} is
not explicitly set, then \code{basename(getwd())} will be used.}

\item{...}{Arguments passed from \code{create_golem()}, unused in the default
function.}
}
\value{
Used for side effects
}
\description{
Project hooks allow to define a function run just after \code{{golem}}
project creation.
}
\examples{
if (interactive()) {
  my_proj <- function(...) {
    unlink("dev/", TRUE, TRUE)
  }
  create_golem("ici", project_template = my_proj)
}
}
