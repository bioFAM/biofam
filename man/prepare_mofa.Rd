% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepare_mofa.R
\name{prepare_mofa}
\alias{prepare_mofa}
\title{Prepare a MOFA for training}
\usage{
prepare_mofa(
  object,
  data_options = NULL,
  model_options = NULL,
  training_options = NULL,
  stochastic_options = NULL,
  mefisto_options = NULL
)
}
\arguments{
\item{object}{an untrained \code{\link{MOFA}}}

\item{data_options}{list of data_options (see \code{\link{get_default_data_options}} details). 
If NULL, default options are used.}

\item{model_options}{list of model options (see \code{\link{get_default_model_options}} for details). 
If NULL, default options are used.}

\item{training_options}{list of training options (see \code{\link{get_default_training_options}} for details). 
If NULL, default options are used.}

\item{stochastic_options}{list of options for stochastic variational inference (see \code{\link{get_default_stochastic_options}} for details). 
If NULL, default options are used.}

\item{mefisto_options}{list of options for smooth inference (see \code{\link{get_default_mefisto_options}} for details). 
If NULL, default options are used.}
}
\value{
Returns an untrained \code{\link{MOFA}} with specified options filled in the corresponding slots
}
\description{
Function to prepare a \code{\link{MOFA}} object for training. 
It requires defining data, model and training options.
}
\details{
This function is called after creating a \code{\link{MOFA}} object (using  \code{\link{create_mofa}}) 
and before starting the training (using \code{\link{run_mofa}}). Here, we can specify different options for
the data (data_options), the model (model_options) and the trainig (training_options, stochastic_options). Take a look at the
individual default options for an overview using the get_default_XXX_options functions above.
}
\examples{
# Using an existing simulated data with two groups and two views
file <- system.file("extdata", "test_data.RData", package = "MOFA2")

# Load data dt (in data.frame format)
load(file) 

# Create the MOFA object
MOFAmodel <- create_mofa(dt)

# Prepare MOFA object using default options
MOFAmodel <- prepare_mofa(MOFAmodel)

# Prepare MOFA object changing some of the default model options values
model_opts <- get_default_model_options(MOFAmodel)
model_opts$num_factors <- 10
MOFAmodel <- prepare_mofa(MOFAmodel, model_options = model_opts)
}
