% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kwb.hantush.R
\name{hantush}
\alias{hantush}
\title{Hantush equation}
\usage{
hantush(x = 0, y = 0, baseProps = baseProperties(), dbg = TRUE)
}
\arguments{
\item{x}{distance from the center of the recharge basin in the x direction (L)}

\item{y}{distance from the center of the recharge basin in the y direction (L)}

\item{baseProps}{basic model properties as retrieved by baseProperties()}

\item{dbg}{If True additional messages on integration quality of function
hantushSstar are printed on screen}
}
\value{
Head at a given time after recharge begins
}
\description{
Hantush equation
}
\references{
p.22, \url{https://pubs.usgs.gov/sir/2010/5102/support/sir2010-5102.pdf}
}
\seealso{
\code{\link{baseProperties}} for basic model properties
}
