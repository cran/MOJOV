\name{MOJOV.genoMatrix}
\alias{MOJOV.genoMatrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A internal function.
It generates a genotype matrix.
}
\description{
A internal function.
It generates a genotype matrix.}
\usage{
MOJOV.genoMatrix(genoIID = NULL, genoVariant = NULL, genoH = NULL,
      phenoIID = NULL, MAF = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{genoIID}{
A character vector for individuals ID.
}
  \item{genoVariant}{
A character vector for variant labels.
}
  \item{genoH}{
A character vector for genotype.
}
  \item{phenoIID}{
A character vector for all individuals from phenotype file.
}
  \item{MAF}{
Specify the minor allele frequency.
}
}
\details{
See \code{\link{MOJOV.analysis}}
}
\value{
This function will return a matrix, it is individuals multiply sites. If the specified variant site of one individual contains one copy of rare variant, it will code 1. If two copy, it will code 2, and others are coded 0.
}

\author{
Ke-Hao Wu
}

\seealso{
\code{\link{MOJOV.genoVector}}
\code{\link{MOJOV.analysis}}
}
\examples{
#Generating individuals ID for genotype file at random.
genoIID<-paste("ID",floor(runif(2000,1,101)),sep="")
#Generating variants labels for genotype file at random.
genoVariant<-paste("rs",floor(runif(2000,223,250)),sep="")
#Generating genotype code for genotype file at random.
genoH<-floor(runif(2000,1,3))
#Generating individuals ID for phenotype file.
phenoIID<-paste("ID",1:100,sep="")
#Generating genotype matrix.
x<-MOJOV.genoMatrix(genoIID=genoIID,genoVariant=genoVariant,genoH=genoH,
         phenoIID=phenoIID)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

