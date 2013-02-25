\name{MOJOV.linearRegAnalysis}
\alias{MOJOV.linearRegAnalysis}
\title{
A internal function.
Linear regression analysis between rare variants and phenotype.
}
\description{
A internal function.
Linear regression analysis between rare variants and phenotype.}
\usage{
MOJOV.linearRegAnalysis(x = NULL, y = NULL, testMethod = c("FTest",
      "WaldTest", "LRT", "Sandwich", "all"), ...)
}
\arguments{
  \item{x}{
A vector for genotype, and it can be from MOJOV.genoVector.
}
  \item{y}{
A vector for phenotype.
}
  \item{testMethod}{
Specify the test method for linear regression, It can be "FTest", "WaldTest", "LRT", "Sandwich" and "all". And the default value is "FTest".
}
  \item{\dots}{
See \code{\link{MOJOV.analysis}}
}
}
\details{
See \code{\link{MOJOV.analysis}}
}

\author{
Ke-Hao Wu
}

\seealso{
\code{\link{MOJOV.analysis}}
}
\examples{
x<-runif(100,0,3)
y<-x+rnorm(100,1,1)
MOJOV.linearRegAnalysis(x=x,y=y)

}

