% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/samplers.R
\name{greta-samplers}
\alias{greta-samplers}
\alias{samples}
\title{sample model variables}
\usage{
samples(..., method = c("hmc", "nuts"), n_samples = 1000, thin = 1,
  warmup = 100, verbose = TRUE, control = list())
}
\arguments{
\item{...}{stochastic nodes to sample values from, probably parameters of a
model}

\item{method}{the method used to sample values. Currently only \code{hmc} is
implemented}

\item{n_samples}{the number of samples to draw (after any warm-up, but before
thinning)}

\item{thin}{the thinning rate; every \code{thin} samples is retained, the
rest are discarded}

\item{warmup}{the number of samples to spend warming up the sampler. During
this phase the sampler moves toward the highest density area and may tune
sampler hyperparameters.}

\item{verbose}{whether to print progress information to the console}

\item{control}{an optional named list of hyperparameters and options to
control behaviour of the sampler}
}
\description{
After defining a greta model in R, draw samples of the random
  variables of interest
}
\examples{
# define a simple model
mu = free()
sigma = lognormal(1, 0.1)
x = observed(rnorm(10))
x \%~\% normal(mu, sigma)

draws <- sample(mu, sigma,
                n_samples = 100,
                warmup = 10)
}

