% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/euclidDist.R
\name{euclidDist}
\alias{euclidDist}
\title{Euclidean Distance}
\usage{
euclidDist(point1, point2)
}
\arguments{
\item{point1}{the first point (numeric value / numeric vector)}

\item{point2}{the first point (numeric value / numeric vector)}
}
\value{
the euclidean distance between the points (numeric value)
}
\description{
Computes the euclidean distance between two points with equal dimentions
}
\examples{
euclidDist(15, 30)
euclidDist(c(1,2,3), c(4,5,6))
}
