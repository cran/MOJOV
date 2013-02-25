\name{MOJOV.analysis}
\alias{MOJOV.analysis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Analysis between rare variants and quantatitive traits using CMC.
}
\description{
Analysis between rare variants and quantatitive traits using CMC.
}
\usage{
MOJOV.analysis(x = NULL, MAF = 0.01, ROI = "scan", savefile = NULL,
      codeMethod = c("Proportion", "Indicator", "ChuanhuaXin"),
      weightMethod = NULL,testMethod = c("FTest", "WaldTest", 
      "LRT", "Sandwich", "all"), ...)
}
\arguments{
  \item{x}{
A "MOJOV" class, it must be edited by MOJOV.phenotype function.
}
  \item{MAF}{
Specify the minor allele frequency, and the default value is 0.01.
}
  \item{ROI}{
Specify the region of interest.It can be a gene symbol, character "scan" or a ROI file name (see details). The default value is "scan", and it will scan all gene in your input "MOJOV" class.
}
  \item{savefile}{
You can specify a file name here, if your want to export the result to a file.
}
  \item{codeMethod}{
Specify the coding method for CMC, It can be "Indicator", "Proportion" and "ChuanhuaXin". And the default value is "Proportion".Details see MOJOV.genoVector.
}
  \item{weightMethod}{
Specify the weighted method for CMC, It only provide "ChuanhuaXin" method in this version.
}
  \item{testMethod}{
Specify the test method for linear regression, It can be "FTest", "WaldTest", "LRT", "Sandwich" and "all". And the default value is "FTest".
}
  \item{\dots}{
You can specify other arguments here, for example "method" for regTermTest.
}
}
\details{
This function is the most important one in MOJOV. And it provide more than one method to code your data, to find the rare variants which are casual variants.

At first, you can change the MAF argument, it can be 0.05 or 0.01 and any value you want. And then, You can choose different region for your analysis.

To achieve the objective described, you can handle the ROI argument. It can be NULL, a gene symbol, a region of interest file and a word "scan". If it is NULL, it will analysis the whole data as one set. This way is best for the file which only contains one gene data. Otherwise, it will judge whether the ROI is a gene symbol from your file. If it is, it analysis the gene. And if it is not, it will find a file whose name is you described in your argument, the format of the file will be showed as below. And at last, if it is a word "scan", it will seperate data for different genes automatically. 

The file for ROI should be four columns, They are gene symbols, chromosomes, start positions and stop positions. And the start position should be less than the stop position.

In terms of codeMethod argument, it can be "Indicator", "Proportion" and "ChuanhuaXin". When it is "Indicator", it will result in a dichotomous variable that indicates presence or absence of any rare variant whin the ROI. When it is "Proportion", it counts the number of variants of subject over all sites; that is, it is proportion of all variants for all subjects. If it is "ChuanhuaXin", it calls a method from Xing et al.

In this version, the weightMethod is only provided for "ChuanhuaXin" method. In light of testMethod, the "FTest" will call a test named " F test". The "WaldTest" will call a function termed wald.test from aod package. The "LRT" will call regTermTest from survey package, and the "Sandwich" will call saws from saws package, this function will use sandwich estimator. At last, if it is "all", it will call all function above, and the result returned is a matrix.
}
\value{
\link{MOJOV-class}
\link{MOJOV.genoMatrix}
\link{MOJOV.genoVector}
}
\references{
Morris AP, Zeggini E. An evaluation of statistical approaches to rare variant analysis in genetic association studies. Genet Epidemiol. 2009;34:188-193.

Dering C, Pugh E, Ziegler A. Statistical analysis of rare sequence variants: an overview of collapsing methods. Genet Epidemiol. 2011;35(Suppl 8):12-17.
}
\author{
Ke-Hao Wu
}


\seealso{
\code{\link{MOJOV-class}}
}
\examples{
  file1<-system.file("data","geno.csv.gz",package="MOJOV")
  file2<-system.file("data","phen.csv.gz",package="MOJOV")
  x<-MOJOV.read(genofile=file1,phenofile=file2)
  x<-MOJOV.phenotype(x=x)
  x<-MOJOV.analysis(x=x)
  }

