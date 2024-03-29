% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_utils.R
\name{use_utils_ui}
\alias{use_utils_ui}
\alias{use_utils_test_ui}
\alias{use_utils_server}
\alias{use_utils_test_server}
\title{Use the utils files}
\usage{
use_utils_ui(pkg = get_golem_wd(), with_test = FALSE)

use_utils_test_ui(pkg = get_golem_wd())

use_utils_server(pkg = get_golem_wd(), with_test = FALSE)

use_utils_test_ui(pkg = get_golem_wd())

use_utils_test_server(pkg = get_golem_wd())
}
\arguments{
\item{pkg}{Path to the root of the package. Default is \code{get_golem_wd()}.}

\item{with_test}{should the module be created with tests?}
}
\value{
Used for side-effects.
}
\description{
\describe{
\item{use_utils_ui}{Copies the golem_utils_ui.R to the R folder.}
\item{use_utils_server}{Copies the golem_utils_server.R to the R folder.}
}
}
