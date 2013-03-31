\name{betahat}
\alias{betahat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function for estimating beta using kernal function
}
\description{
Function for estimating beta using kernal function
}
\usage{
betahat(X, Y, init, lambda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
m X p data matrix for m non-diseased subjects with p markers
}
  \item{Y}{
n X p data matrix for n diseased subjects with p markers
}
  \item{init}{
initial value of the linear coefficients for the optimization algorithm
}
  \item{lambda}{
the smooth parameter for the Sigmoid function used for the AUC 
}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
