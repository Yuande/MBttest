\name{simulat}
\alias{simulat}

\title{
Simulation Data
}
\description{
This function uses negative binomial (NB) pseudorandom generator to create any count datasets of RNA isoform reads based on real data. 
}
\usage{
simulat(yy, nci, r1, r2, p, q, A)
}

\arguments{
  \item{yy}{
real count data
}
  \item{nci}{
numeric argument: column number of information related to genes or isoforms. 
}
  \item{r1}{
numeric argument: number of replicate libraries in condition 1.
}
  \item{r2}{
numeric argument: number of replicate libraries in condition 2.
}
  \item{p}{
numeric argument: proportion of genes or isoforms differentially expressed. The value is in range of 0 ~1. Default value is 0.
}
  \item{q}{
numeric argument: proportion of genes or isoforms artificially noised. The value is in range of 0 ~1. Default value is 0.
}
  \item{A}{
numeric argument: conditional effect value. The value is larger than or equal to 0. Default value is 0.
}

}
\details{
Null count data are created by using R negative binomial pseudorandom generator rnbinom with mu and size. Parameters mu and size are given by mean and  variance drawn from real read counts of a gene or an isoforms in a condition. Condition (or treatment) effect on differential transcription of isoforms is linearly and randomly assigned to genes or isoforms. The conditional effect = AU where U is uniform variable and A is an input constant. P percent of genes or isoforms are set to be differentially expressed or differentially spliced. Q percent of genes or isoforms have technical noise.  If P = 0, then simulation is null simulation, the data are null data or baseline data.

  
}
\value{
Return count data.
}
\references{
Yuan-De Tan Anita M. Chandler, Arindam Chaudhury, and Joel R. Neilson(2015) A Powerful Statistical Approach for Large-scale Differential Transcription Analysis.\emph{Plos One}, 10.1371/journal.pone.0123658. 
}
\author{
Yuan-De Tan
\email{tanyuande@gmail.com}
}
\seealso{
     \code{\link[stats]{NegBinomial}}
}
\examples{
data(jkttcell)
jknull<-simulat(yy=jkttcell[1:500,],nci=7,r1=3,r2=3,p=0,q=0.2,A=0)
}
\keyword{negative}
\keyword{binomial}
\keyword{simulation}
