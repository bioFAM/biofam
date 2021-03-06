% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contribution_scores.R
\name{calculate_contribution_scores}
\alias{calculate_contribution_scores}
\title{Calculate contribution scores for each view in each sample}
\usage{
calculate_contribution_scores(
  object,
  views = "all",
  groups = "all",
  factors = "all",
  scale = TRUE
)
}
\arguments{
\item{object}{a trained \code{\link{MOFA}} object.}

\item{views}{character vector with the view names, or numeric vector with view indexes. Default is 'all'}

\item{groups}{character vector with the group names, or numeric vector with group indexes. Default is 'all'}

\item{factors}{character vector with the factor names, or numeric vector with the factor indexes. Default is 'all'}

\item{scale}{logical indicating whether to scale the sample-wise variance explained values by the total amount of variance explained per view. 
This effectively normalises each view by its total variance explained. It is important when different amounts of variance is explained for each view (check with \code{plot_variance_explained(..., plot_total=TRUE)})}
}
\value{
adds the contribution scores to the metadata slot (\code{samples_metadata(MOFAobject)}) and to the cache slot
}
\description{
This function calculates, *for each sample* how much each view contributes to its location in the latent manifold, what we call \emph{contribution scores}
}
\details{
Contribution scores are calculated in three steps:
\itemize{
 \item{Step 1}{calculate variance explained for each cell i and each view m (\eqn{R_{im}}), using all factors}
 \item{Step 2}{(optional) scale values by the total variance explained for each view}
 \item{Step 3}{calculate contribution score (\eqn{C_{im}}) for cell i and view m as: \deqn{C_{im} = \frac{R2_{im}}{\sum_{m}^{M} R2_{im}} } }
}
Note that contribution scores can be calculated using any number of data modalities, but it is easier to interpret when you specify two. \cr
Please note that this functionality is still experimental, contact the authors if you have questions.
}
\examples{
# Using an existing trained model on simulated data
file <- system.file("extdata", "model.hdf5", package = "MOFA2")
model <- load_model(file)
model <- calculate_contribution_scores(model)

}
