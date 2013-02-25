\name{MOJOV.genoVector}
\alias{MOJOV.genoVector}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A internal function.
It makes genotype matrix become a genotype vector.
}
\description{
It makes genotype matrix become a genotype vector using different coding methods.
}
\usage{
MOJOV.genoVector(x = NULL, y = NULL, codeMethod = c("Proportion", "Indicator",
      "ChuanhuaXin"), weightMethod = c("ChuanhuaXin"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A matrix for genotype, and it can be from MOJOV.matrix.
}
  \item{y}{
A vector for phenotype, it's length should be equal to the rows of x.
}
  \item{codeMethod}{
Specify the coding method for CMC, It can be "Indicator", "Proportion" and "ChuanhuaXin". And the default value is "Proportion".
}
  \item{weightMethod}{
Specify the weighted method for CMC, It only provide "ChuanhuaXin" method in this version.
}
}

\details{
See \code{\link{MOJOV.analysis}}
}
\value{
It will return a vector of genotype processed by different coding methods.
}
\references{
Morris AP, Zeggini E. An evaluation of statistical approaches to rare variant analysis in genetic association studies. Genet Epidemiol. 2009;34:188-193.

Dering C, Pugh E, Ziegler A. Statistical analysis of rare sequence variants: an overview of collapsing methods. Genet Epidemiol. 2011;35(Suppl 8):12-17.
}
\author{
Ke-Hao WU
}

\seealso{
\code{\link{MOJOV.analysis}}
\code{\link{MOJOV.genoMatrix}}
\code{\link{MOJOV.weight}}
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
#Generating genotype vector.
xVector<-MOJOV.genoVector(x=x,y=phenoIID)
}

