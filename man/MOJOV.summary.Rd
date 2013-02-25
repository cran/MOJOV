\name{MOJOV.summary}
\alias{MOJOV.summary}
\title{
Exporting summary information for genotype.
}
\description{
Exporting summary information for genetype data. Including total information, such as how many genes, how many variants, how many rare variants. And some information for each gene.
}
\usage{
MOJOV.summary(x = NULL, ROI = "scan", bin = c(0, 0.01, 0.05, 
      0.1, 0.2, 0.3, 0.4, 0.5), MAF = 0.05, ...)
}
\arguments{
  \item{x}{
A "MOJOV" class.}
  \item{ROI}{
It can be "scan" or a gene symbol. If it is "scan", it will scan the whole genome for every gene. Or it only run for the specified gene.
}
  \item{bin}{
A bin for frequency statistic.The defalut value is c(0, 0.01, 0.05,0.1, 0.2, 0.3, 0.4, 0.5).
}
  \item{MAF}{
Specify the minor allele frequency, and the default value is 0.05.}
  \item{\dots}{
...}
}

\author{
Ke-Hao Wu
}
