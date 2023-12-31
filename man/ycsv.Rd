% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ycsv.R
\name{ycsv}
\alias{ycsv}
\title{svensson (1994) 4 factor model formula}
\usage{
ycsv(lambda, factors, tau)
}
\arguments{
\item{lambda}{Decay parameters. A pair of numeric values.}

\item{factors}{Estimated factors (see factors_sv). Numeric Vector.}

\item{tau}{Time to maturity. Numeric. Must match the length of Y and be in the same base, i.e, annual, monthly etc.}
}
\value{
Vector of yields corresponding to the maturities.
}
\description{
Returns the yields associated with a set of maturities, using decay parameters and factors with the Svensson (1994) formula.
}
\examples{

#library('Quandl')

#dados <- Quandl("USTREASURY/YIELD")
dados <- ettj_package_data
yields <- dados[1,2:ncol(dados)]
maturidades <- c(1/12, 2/12, 3/12, 6/12, 1, 2, 3, 5, 7, 10, 20, 30);
factors <- factors_sv(c(.9,.035), yields, maturidades)
yc <- ycsv(factors[5:6], factors[1:4], maturidades)

}
