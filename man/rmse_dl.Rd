% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmse_dl.R
\name{rmse_dl}
\alias{rmse_dl}
\title{Estimates the squared root of the mean squared error (rmse) for an OLS regression of the Diebold Li (2006) factor model.}
\usage{
rmse_dl(lambda, Y, tau)
}
\arguments{
\item{lambda}{Decay parameter. A numeric value.}

\item{Y}{Observed yields. Numeric Vector.}

\item{tau}{Time to maturity. Numeric. Must match the length of Y and be in the same base, i.e, annual, monthly etc.}
}
\value{
Squared root of mean squared error.
}
\description{
Performs an OLS regression using the 3 factor yield curve model:
\deqn{y_{\tau} = \beta_{1} + 
                 \beta_{2}((1-e^{(-\tau^{'}  \lambda_{1})})/(\tau^{'}\lambda_{1})) +
                 \beta_{3}((1-e^{(-\tau^{'}  \lambda_{1})})/(\tau^{'}\lambda_{1}) - e^{(-\tau^{'}  \lambda_{1})})} 
The independent variable is the yield to maturity, \eqn{y_{\tau}}, the dependent variables are the factor loadings,
the bracketed terms that multiply the \eqn{\beta} factors. The results are compared with the empirical yields and summarized 
in the rmse results. This function is called by the factors_sv function in order to determine the decay parameters, 
\eqn{\lambda}, which minimize the error of the model in relation to the observed values.
}
