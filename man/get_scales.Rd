% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_methods.R
\name{get_scales}
\alias{get_scales}
\title{Get scales}
\usage{
get_scales(object)
}
\arguments{
\item{object}{a \code{\link{MOFA}} object.}
}
\value{
A numeric vector containing the scale for each factor.
}
\description{
Extract the inferred scale for each factor after model training.
}
\details{
This can be used only if covariates are passed to the MOFAobject upon creation and GP_factors is set to True.
}
\examples{
# Using an existing trained model
file <- system.file("extdata", "MEFISTO_model.hdf5", package = "MOFA2")
model <- load_model(file)
s <- get_scales(model)
}
