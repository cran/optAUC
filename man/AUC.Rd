\name{AUC}
\alias{AUC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function for AUC with sigmoid estimate
}
\description{
Function for AUC with sigmoid estimate
}
\usage{
AUC(beta, Z, lambda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{beta}{
  linear coefficients for linear combinations of multiple diagnostic tests
}
  \item{Z}{
  the Y[i]-X[j]
}
  \item{lambda}{
the smooth parameter for the Sigmoid function used for the AUC
}
}

\author{
Maintainer: Xin Huang <xhuang.fhcrc@gmail.com>
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
