\name{MOJOV-package}
\alias{MOJOV-package}
\alias{MOJOV}
\docType{package}
\title{
Mojo Variants: Rare Variants analysis tool.
}
\description{
Genome-wide association analysis has effectively identified lots of common loci which is related to some diseases, but a large amount of heritability is still unexplained. To find the missing heritability, Morris and Zeggini proposed the combined multivariate and collapsing (CMC) method. In addition, in light of most recent findings, linear regression is still the gold standard to detect the association between rare variants and continuous traits.


To make the CMC method and linear regression analysis more convenient for all people who want to investigate the secret in rare variants and to construct a public platform for rare variants analysis, we developed MOJOV package.MOJOV is from Mojo Variants. It means rare variants is a fullfil of magic power.MOJOV package has some objects as follows:

(1) Providing a complete system to detect rare variants using CMC method and linear regression model.

(2) Providing more convenient method to scan all genes in your squencing data.

(3) Providing more than one options for analysis.

(4) Providing summary statistic information for your data.

}
\details{
\tabular{ll}{
Package: \tab MOJOV\cr
Type: \tab Package\cr
Version: \tab 1.0.1\cr
Date: \tab 2013-02-25\cr
License: \tab GPL(>=2)\cr
Depends: \tab methods,aod,saws,survey,lattice\cr
}
This package contains two important class and four main functions:

"MOJOV" class:
This class will be used from the beginning to the end of your analysis. It will record all your infomation for your analysis. The details you can see \link{MOJOV-class}.

"MOJOV.Summary" class:
This class is created by MOJOV.summary function. The details you can see \link{MOJOV.summary}.

MOJOV.read: It reads genotype and phenotype data from your file. And it create "MOJOV" class for your later analysis.

MOJOV.phenotype: It adjusts your phenotype.

MOJOV.analysis: This is the most important function in this package.

MOJOV.summary: It will help you to know you data deeply by export some import summary imformation.

To finish a complete analysis using MOJOV package, you can do as following steps:

(1) Reading your file by MOJOV.read, and it will return a "MOJOV" class. You should store this class into a variable for the next step.

(2) Passing the previous step result to MOJOV.phenotype. It will process your phenotype. The same as the step 1, you need store the result for the next step.

(3) Throw the result from the step 2 to MOJOV.analysis, it will help you accomplish all analysis. And it also return a "MOJOV" class. Of course, you can specify a file name to store your result.

The MOJOV.analysis is designed for more than one function. It can be run for whole genome, one single gene and specify some regions of interest. If you run this function, it will call MOJOV.genoMatrix, MOJOV.genoVector and MOJOV.linerRegAnalysis automatically. The details is described as follows:

At first, the MOJOV.genoMatrix read a "MOJOV" class which is from MOJOV.read, and export a matrix for genotype. And then, it passes the matrix to MOJOV.genoVector. It will create a vector called genotype vector by using different coding methods, such as proportion and indicator. At last, the genotype vector and the adjusted phenotype data is recieved by MOJOV.liearRegAnalysis and export the analysis result.

Also, MOJOV provides a function to simulate, but it will call ms by system() function to creating analysis cohort.
}
\author{
Ke-Hao Wu

Maintainer: Ke-Hao Wu <kehao.wu@gmail.com>
}
\references{
Morris AP, Zeggini E. An evaluation of statistical approaches to rare variant analysis in genetic association studies. Genet Epidemiol. 2009;34:188-193.

Dering C, Pugh E, Ziegler A. Statistical analysis of rare sequence variants: an overview of collapsing methods. Genet Epidemiol. 2011;35(Suppl 8):12-17.
}

\seealso{
\code{\link[MOJOV:MOJOV-package]{MOJOV}} 
}
\examples{
  file1<-system.file("data","geno.csv.gz",package="MOJOV")
  file2<-system.file("data","phen.csv.gz",package="MOJOV")
  x<-MOJOV.read(genofile=file1,phenofile=file2)
  x
}
