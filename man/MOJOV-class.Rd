\name{MOJOV-class}
\Rdversion{1.0.1}
\docType{class}
\alias{MOJOV-class}
\alias{adjustAuto,MOJOV-method}
\alias{adjustData,MOJOV-method}
\alias{adjustPower,MOJOV-method}
\alias{adjustPowerPvalue,MOJOV-method}
\alias{adjustPvalue,MOJOV-method}
\alias{adjustGender,MOJOV-method}
\alias{adjustTerms,MOJOV-method}
\alias{analyCode,MOJOV-method}
\alias{analyWeighted,MOJOV-method}
\alias{genoChr,MOJOV-method}
\alias{genoFile,MOJOV-method}
\alias{genoGene,MOJOV-method}
\alias{genoH,MOJOV-method}
\alias{genoIID,MOJOV-method}
\alias{genoPosi,MOJOV-method}
\alias{genoVariant,MOJOV-method}
\alias{phenoAge,MOJOV-method}
\alias{phenoColumn,MOJOV-method}
\alias{phenoData,MOJOV-method}
\alias{phenoFile,MOJOV-method}
\alias{phenoHeight,MOJOV-method}
\alias{phenoIID,MOJOV-method}
\alias{phenoIndNum,MOJOV-method}
\alias{phenoLabel,MOJOV-method}
\alias{phenoGender,MOJOV-method}
\alias{phenoWeight,MOJOV-method}
\alias{regionChr,MOJOV-method}
\alias{regionFile,MOJOV-method}
\alias{regionGene,MOJOV-method}
\alias{regionPStart,MOJOV-method}
\alias{regionPStop,MOJOV-method}
\alias{regionType,MOJOV-method}
\alias{resultMethod,MOJOV-method}
\alias{resultPvalue,MOJOV-method}
\alias{show,MOJOV-method}
\alias{varFreq,MOJOV-method}
\alias{varMAF,MOJOV-method}
\alias{varRare,MOJOV-method}
\alias{varTot,MOJOV-method}

\title{Class \code{"MOJOV"}}
\description{
A class for MOJOV package, and you can create it by call \code{new("MOJOV",...)}
}

\section{Slots}{
  \describe{
    \item{genoFile}{ \code{"character"} Genotype file name. }
    \item{genoIID}{ \code{"character"} Individual ID in genotype file. }
    \item{genoChr}{ \code{"character"} Chromosome name in genotype file. }
    \item{genoPosi}{ \code{"numeric"} Physical position in genotype file. }
    \item{genoVariant}{ \code{"character"} Variants labels in genotype file. }
    \item{genoH}{ \code{"numeric"} Genotype code in genotype file. 1 stands for heterozygote, 0 stands for no variant copy, 2 stands for two variant copies. }
    \item{genoGene}{ \code{"character"} Gene labels in genotype file. }
    \item{phenoFile}{ \code{"character"} Phenotype file name. }
    \item{phenoIID}{ \code{"character"} Individuals ID in phenotype. }
    \item{phenoGender}{ \code{"numeric"} Gender information. }
    \item{phenoAge}{ \code{"numeric"} Age for all individuals. }
    \item{phenoHeight}{ \code{"numeric"} Height for all individuals. }
    \item{phenoWeight}{ \code{"numeric"} Weight for all individuals. }
    \item{phenoLabel}{ \code{"character"} Phenotype name. }
    \item{phenoData}{ \code{"numeric"} Phenotype data. }
    \item{phenoColumn}{ \code{"numeric"} Indicating which column will be read. }
    \item{phenoIndNum}{ \code{"numeric"} Number of individuals. }
    \item{adjustAuto}{ \code{"logical"} An arguments for MOJOV.phenotype. }
    \item{adjustData}{ \code{"numeric"} Phenotype data after adjusted. }
    \item{adjustGender}{ \code{"logical"} An arguments for MOJOV.phenotype. }
    \item{adjustPower}{ \code{"numeric"} The exponent for adjust. }
    \item{adjustPowerPvalue}{ \code{"numeric"} The result of shapiro test. }
    \item{adjustTerms}{ \code{"character"} Which term has been adjusted. }
    \item{adjustPvalue}{ \code{"numeric"} The p value for adjust. }
    \item{varMAF}{ \code{"numeric"} Minor allele frequency. }
    \item{varFreq}{ \code{"numeric"} Frequency for all variants. }
    \item{varTot}{ \code{"character"} ~~ }
    \item{varRare}{ \code{"character"} ~~ }
    \item{regionFile}{ \code{"character"} File name for ROI file. }
    \item{regionType}{ \code{"character"} Indicating the ROI type. }
    \item{regionChr}{ \code{"character"} Chromosome infomation in ROI file. }
    \item{regionPStart}{ \code{"numeric"} Physical position (start) in ROI file. }
    \item{regionPStop}{ \code{"numeric"} Physical position (stop) in ROI file. }
    \item{regionGene}{ \code{"character"} Gene information in ROI file. }
    \item{analyCode}{ \code{"character"} Coding method. }
    \item{analyWeighted}{ \code{"character"} Weighted method. }
    \item{resultMethod}{ \code{"character"} Test method. }
    \item{resultPvalue}{ \code{"numeric"} P value from linear regression analysis. }
  }
}


\author{
Ke-Hao Wu
}

\seealso{
\link{MOJOV.read}
}

\keyword{classes}
