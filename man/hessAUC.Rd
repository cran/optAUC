\name{hessAUC}
\alias{hessAUC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
function for hessian matrix of AUC
}
\description{
function for hessian matrix of AUC
}
\usage{
hessAUC(beta, X, Y, lambda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{beta}{
linear coefficients
}
  \item{X}{
      m X p data matrix for m non-diseased subjects with p markers
}
  \item{Y}{
      n X p data matrix for n diseased subjects with p markers
}
  \item{lambda}{
      the smooth parameter for the Sigmoid function used for the AUC 
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
