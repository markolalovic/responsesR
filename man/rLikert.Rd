% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/responses.R
\name{rLikert}
\alias{rLikert}
\title{rLikert}
\usage{
rLikert(size = 1, items = 1, levels = 5, location = 0, scale = 1, shape = 0)
}
\arguments{
\item{size}{(positive, int)   Size of a sample; e.g.: size=100}

\item{items}{(positive, int)  Number of Likert items; e.g.: items=10}

\item{levels}{(positive, int) Number of possible responses; e.g.: levels=5}

\item{location}{(real)        Determines the location or shift; e.g.: location=0}

\item{scale}{(positive, real) Determines the scale or dispersion; e.g.: scale=1}

\item{shape}{(real)           Determines the skewness or asymmetry; e.g.: shape=0}
}
\value{
responses (data.frame) Simulated Likert scale item responses; e.g.:
> rLikert(size=6, items=8)
X1 X2 X3 X4 X5 X6 X7 X8
1  5  2  2  2  3  5  3  5
2  3  3  1  3  3  2  3  3
3  3  5  3  4  3  3  1  4
4  3  4  5  3  3  2  3  3
5  3  4  4  3  5  1  2  3
6  2  2  4  4  3  3  3  2
}
\description{
Generates a sample of simulated Likert scale item responses. It assumes the
underlying latent variable is following a skew-normal distribution and
performs optimal discretization using Lloyd-Max algorithm to generate
probabilities of a discrete random variable from which it draws the sample.
}
\examples{
rLikert(size=6, items=8)
responses <- rLikert(size=6, items=8)
}
