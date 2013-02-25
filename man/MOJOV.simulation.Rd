\name{MOJOV.simulation}
\alias{MOJOV.simulation}
\title{
Simulation for CMC.
}
\description{
Provide a simulation function using ms software. If you have no ms and no Linux, you can not run this function.
}
\usage{
MOJOV.simulation(cohortSize = 500, nReps = 2, theta = 10, sites = NULL,
affectNum = NULL, MAF = 0.01, totalMAF = 0.05, lambda = 1, sd = NULL,
type = c("alpha","belta"), sampleNum = 100, outFile = NULL, plot = FALSE, 
codeMethod = c("Proportion", "Indicator", "ChuanhuaXin"),
weightMethod = c("ChuanhuaXin"), testMethod = c("FTest", "WaldTest", 
"LRT", "Sandwich", "all"), save = NULL)
}
\arguments{
  \item{cohortSize}{
Specify the size for analysis cohort.  
}
  \item{nReps}{
Specify the number of independent samples to generate.}
  \item{theta}{
Specify the mutation parameter,see details.}
  \item{sites}{
Specify the number of sites, it is optional.}
  \item{affectNum}{
Specify the number or ratio for affect sites.If it is less than 1, it will be the ratio of affect rare variants sites to all rare variants.
}
  \item{MAF}{
Specify the minor allele frequency, and the default value is 0.01.}
  \item{totalMAF}{
Specify the total minor allele frequency for affect variants. And the default value is 0.05.
}
  \item{lambda}{
Specify the lambda for phenotype standard error.See details.
}
  \item{sd}{
Specify the standard error.See details.}
  \item{type}{
It can be "alpha" and "belta". The default value is "alpha".}
  \item{sampleNum}{
Specify the number of sample. The default value is 100.}
  \item{outFile}{
You can specify a file name to save your data from ms.}
  \item{plot}{
You can set it as TRUE, it will plot the result using lattice package.}
  \item{codeMethod}{
See \link{MOJOV.analysis}
}
  \item{weightMethod}{
See \link{MOJOV.analysis}
}
  \item{testMethod}{
See \link{MOJOV.analysis}
}
  \item{save}{
You can specify a file name to save your simulation result.
}
}

\author{
Ke-Hao Wu
}
