% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_smartinsights.R,
%   R/smartinsights_script.R
\name{generate_smartinsights}
\alias{generate_smartinsights}
\title{Generate SmartInsights Data Profiling Report}
\usage{
generate_smartinsights(dataset_path = "inst/extdata/hotel_bookings.csv")

generate_smartinsights(dataset_path = "inst/extdata/hotel_bookings.csv")
}
\arguments{
\item{dataset_path}{The path to a structured CSV file.}
}
\value{
An HTML report is generated and saved; function does not return a value.

A SmartInsights HTML report saved to the `/reports` folder.
}
\description{
This function renders an AI-powered HTML report that profiles the structure,
summary statistics, and data quality of a given dataset.
The report is saved to the `/reports` folder.

This function generates an AI-powered data profiling report using R Markdown.
}
\examples{
generate_smartinsights("inst/extdata/hotel_bookings.csv")
}
