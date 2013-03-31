\name{optAUC}
\alias{optAUC}
\title{
Optimal Combinations of Diagnostic Tests Based on AUC
}
\description{
Searches for optimal linear combination of multiple diagnostic tests (markers) that maximizes the area under the receiver operating characteristic curve (AUC); performs an approximated cross-validation for estimating the AUC associated with the estimated coefficients.
}
\usage{
optAUC(X, Y, column.select = c(1:ncol(X)), lambda = 5, scale = TRUE)
}
\arguments{
  \item{X}{
      m X p data matrix for m non-diseased subjects with p markers
}
  \item{Y}{
      n X p data matrix for n diseased subjects with p markers
}
  \item{column.select}{
      which of the p markers are used for the combination, default is all p columns
}
  \item{lambda}{
      the smooth parameter for the Sigmoid function used for the AUC 
}
  \item{scale}{
      a logic indicator whether performs standardization to the dataset before the combination, default is true
}
}
\details{
When several diagnostic tests are available, one can combine them to achieve better diagnostic accuracy. This program considers the optimal linear combination that maximizes the area under the receiver operating characteristic curve (AUC); the estimates of the combination's coefficients is obtained via a nonparametric procedure. Further, for estimating the AUC associated with the estimated coefficients, this progam outputs two estimates: one is an apparent estimation by re-substitution (ACV), which is too optimistic; the other is an approximated cross-validation (GCV) estimation. Notice that, the GCV can be applied for variable selection to select important diagnostic tests\\markers. See reference for more details.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{beta}{the estimated linear coefficients, under a unit-sphere constraint}
  \item{ACV}{apparent estimation of AUC of the composite score by re-substitution of the linear coefficients}
  \item{GCV}{the approximated cross-validation estimation of AUC of the composite score}
  \item{converge}{an indicator for the convergency status of the optimization algorithm, 1 means converge, 0 means converge criteria not meet}
%% ...
}
\references{
Huang X, Qin G, Fang Y. (2011) Optimal Combinations of Diagnostic Tests Based on AUC. Biometrics. Jun;67(2):568-76. \cr
http://www.ncbi.nlm.nih.gov/pubmed/20560934
}
\author{
Xin Huang, Gengsheng Qin, Yixin Fang \cr
Maintainer: Xin Huang <xhuang.fhcrc@gmail.com>
}
\note{
It is recommended to rescale or monotonic transfer of the data first if significant outliners exists, e.g. log transfer. The AUC is invariant to any monotonic transformation of the data; however, the sigmoid approximation of the AUC may be affected by outliners. \cr
The estimated linear coefficients are based on the standardized (if the parameter scale=TRUE) input data.  Thus, composite scores = beta\%*\%scale(rbind(X,Y)).
}


\examples{
library(MASS)
rho<-0
m<-50
n<-50
y1.sd<-0.5
y2.sd<-0.5 
y1.mean<-2
y2.mean<-1
lambda <- 5

set.seed(88)
# generate non-diseased population F(X1, X2)
# the sample from 2-dimensinal multinormal distribution with mean 0 and std=1
X1X2<-mvrnorm(m, c(1,1), matrix(c(0.5,rho,rho,0.5),2,2))

# generate  diseased population G(Y1,Y2)
# the sample from 2-dimensinal multinormal distribution with mean
# (y1.mean,y2.mean) and std=(y1.sd,y2.sd) 
Y1Y2<-mvrnorm(n, c(y1.mean,y2.mean), matrix(c(y1.sd^2,rho*y1.sd*y2.sd, rho*y1.sd*y2.sd, y2.sd^2),2,2))

# only the first marker, the "true" model, should have the maximum AUC amount all models
optAUC(X1X2, Y1Y2, column.select=1)
# two markers in the model, the AUC from GCV is smaller than just first marker in the model, because the second marker is noise
# the AUC from ACV (apearent estimate by substituting the estimated beta into the model) is larger than previous model, because overfitting
optAUC(X1X2, Y1Y2, column.select=c(1:2))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
