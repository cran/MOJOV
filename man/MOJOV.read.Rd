\name{MOJOV.read}
\alias{MOJOV.read}
\title{
Reading genotype and phenotype and generating a "MOJOV" class.
}
\description{
Reading genotype and phenotype and generating a "MOJOV" class.

And it can read another phenotype for a existing "MOJOV" class.
}
\usage{
MOJOV.read(x = NULL, genofile = NULL, phenofile = NULL,
      indelfile = NULL, header = T, column = 1, ...)
}
\arguments{
  \item{x}{
If x is null, it will need both genotype and phenotype file, or x should be a "MOJOV" class and it only need phenotype file, see detials.
}
  \item{genofile}{
Specify genotype file name.
}
  \item{phenofile}{
Specify phenotype file name.
}
  \item{indelfile}{
Specify insert and delete variants file name, it is optional.
}
  \item{header}{
Specify whether the file contains a head line.
}
  \item{column}{
Which column phenotype will be read. This column is not include the previous 5 columns. The default value is 1.
}
  \item{\dots}{
You can specify other arguments here.
}
}


\author{
Ke-Hao Wu
}

\seealso{
\code{\link{MOJOV-class}}
}
\examples{
  #Reading both genotype and phenotype files.
  file1<-system.file("data","geno.csv.gz",package="MOJOV")
  file2<-system.file("data","phen.csv.gz",package="MOJOV")
  x<-MOJOV.read(genofile=file1,phenofile=file2)
  
  #Reading phenotype and switch different phenotype column to analysis.
  x  #x is a existing "MOJOV" class. The phenotype is R_13_AREA.
  x<-MOJOV.read(x=x,phenofile=file2,column=2) #The phenotype is _13_BMD.
}

