\name{betattest}
\alias{betattest}
\title{
Beta t-test
}
\description{
Beta t-test and degree of freedom for each gene or isoform are calculated in this function. 
}
\usage{
betattest(X, na, nb)
}

\arguments{
  \item{X}{
count data of RNA reads containing N genes (or isoforms).
}
  \item{na}{                     
number of replicate libraries in condition A
}
  \item{nb}{
number of replicate libraries in condition B
}
}
\details{
In beta t-test, \deqn{t=\frac{(P_A-P_B)}{\sqrt(V_A+V_B)}} where \eqn{P_A} and \eqn{P_B} are proportions of a gene or an isoform in conditions A and B, \eqn{V_A} and \eqn{V_B} are variances estimated in conditions A and B. They are outputted by betaparametVP.
}
\value{
return two lists:
  \item{t}{t-value list.}
  \item{df}{df list. df is degree of freedom.}
}
\references{
Baggerly KA, Deng L, Morris JS, Aldaz CM (2003) Differential expression in SAGE: accounting for normal between-library variation. \emph{Bioinformatics}, \bold{19}: 1477-1483.
\cr
Yuan-De Tan, Anita M. Chandler, Arindam Chaudhury, and Joel R. Neilson(2015) A Powerful Statistical Approach for Large-scale Differential Transcription Analysis.\emph{Plos One}. 2015 DOI: 10.1371/journal.pone.0123658. 
}
\author{
Yuan-De Tan
\email{tanyuande@gmail.com}
}
\note{
If pooled standard error is zero, then the t-value is not defined and set to be zero.
}

\seealso{
\code{\link{pratio}}, \code{\link{oddratio}}.
}
\examples{
data(jkttcell) 
X<-jkttcell[1:1000,]
na<-3
nb<-3
cn<-ncol(X)
rn<-nrow(X)
XC<-X[,1:(cn-na-nb)]
XX<-X[,(cn-na-nb+1):cn]
betattest<-betattest(XX,na=3,nb=3)
}
\keyword{ t-value }
\keyword{beta distribution}
