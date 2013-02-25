\name{MOJOV.export}
\alias{MOJOV.export}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Export test result from a MOJOV class to file.
}
\description{
Export test result from a MOJOV class to file.
}
\usage{
MOJOV.export(x = NULL, file = "MOJOV.result.csv", p = 0.001)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A "MOJOV" class, and it must be edited by MOJOV.analysis.
}
  \item{file}{
A file name, and the default value is "MOJOV.result.csv".
}
  \item{p}{
Specify the significance level, and the default value is 0.001.
}
}

\author{
Ke-Hao Wu
}

\seealso{
\code{\link{MOJOV-class}}
\code{\link{MOJOV.analysis}} 
}
\examples{
  file1<-system.file("data","geno.csv.gz",package="MOJOV")
  file2<-system.file("data","phen.csv.gz",package="MOJOV")
  x<-MOJOV.read(genofile=file1,phenofile=file2)
  x<-MOJOV.phenotype(x=x)
  x<-MOJOV.analysis(x=x)
  MOJOV.export(x=x,file="example.result.csv",p=0.05)
}

