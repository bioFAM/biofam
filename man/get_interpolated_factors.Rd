% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_methods.R
\name{get_interpolated_factors}
\alias{get_interpolated_factors}
\title{Get interpolated factor values}
\usage{
get_interpolated_factors(object, as.data.frame = FALSE, only_mean = FALSE)
}
\arguments{
\item{object}{a \code{\link{MOFA}} object}

\item{as.data.frame}{logical indicating whether to return data as a data.frame}

\item{only_mean}{logical indicating whether include only mean or also uncertainties}
}
\value{
By default, a nested list containing for each group a list with a matrix with the interpolated factor values ("mean"),
 their variance ("variance") and the values of the covariate at which interpolation took place ("new_values"). 
Alternatively, if \code{as.data.frame} is \code{TRUE}, returns a long-formatted data frame with columns containing the covariates 
and (factor, group, mean and variance).
}
\description{
Extract the interpolated factor values
}
\details{
This can be used only if covariates are passed to the object upon creation, GP_factors is set to True and new covariates were passed for interpolation.
}
