% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addins.R
\name{addins}
\alias{addins}
\alias{insert_ns}
\alias{go_to_start}
\alias{go_to_dev}
\alias{go_to_deploy}
\alias{go_to_run_dev}
\alias{go_to_app_ui}
\alias{go_to_app_server}
\alias{go_to_run_app}
\title{\code{{golem}} addins}
\usage{
insert_ns()

go_to_start(wd = golem::get_golem_wd())

go_to_dev(wd = golem::get_golem_wd())

go_to_deploy(wd = golem::get_golem_wd())

go_to_run_dev(wd = golem::get_golem_wd())

go_to_app_ui(wd = golem::get_golem_wd())

go_to_app_server(wd = golem::get_golem_wd())

go_to_run_app(wd = golem::get_golem_wd())
}
\arguments{
\item{wd}{The working directory of the \code{{golem}} application.}
}
\description{
\code{insert_ns()} takes a selected character vector and wrap it in \code{ns()}
The series of \verb{go_to_*()} addins help you go to
common files used in developing a \code{{golem}} application.
}
