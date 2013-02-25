\name{MOJOV.phenotype}
\alias{MOJOV.phenotype}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Ajusting phenotype data for covariates.
}
\description{
Ajusting phenotype data for covariates.
}
\usage{
MOJOV.phenotype(x = NULL, auto = FALSE, gender = TRUE, power = 1,
      Terms = 1:3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A "MOJOV" class.
}
  \item{auto}{
If it is TRUE, it will automatically find the best arguments. And the default value is FALSE.
}
  \item{gender}{
If it is TRUE, it will adjust for different gender.
}
  \item{power}{
Specify the exponent. It can be a number or a numeric vector.
}
  \item{Terms}{
It specify which argument will be used for adjusted. The 1,2,3 stand for age, height and weight respectively.
}
}

\author{
Ke-Hao Wu
}
