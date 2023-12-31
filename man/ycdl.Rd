% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ycdl.R
\name{ycdl}
\alias{ycdl}
\title{Diebold and Li (2006) 3 factor model formula}
\usage{
ycdl(lambda, factors, tau)
}
\arguments{
\item{lambda}{Decay parameter.Numeric.}

\item{factors}{Observed yields. Numeric Vector.}

\item{tau}{Time to maturity. Numeric. Must match the length of Y and be in the same base, i.e, annual, monthly etc.}
}
\value{
Vector of yields corresponding to the maturities.
}
\description{
Returns the yields associated with a set of maturities, using decay parameters and factors with the Diebold and Li (2006) formula.
}
\examples{

#library('Quandl')

#dados <- Quandl("USTREASURY/YIELD")
dados <- ettj_package_data
yields <- dados[1,2:ncol(dados)]
maturidades <- c(1/12, 2/12, 3/12, 6/12, 1, 2, 3, 5, 7, 10, 20, 30);
factors <- factors_dl(c(.9,.035), yields, maturidades)
yc <- ycdl(factors[4], factors[1:3], maturidades)


}
