% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palr.R
\name{col2hex}
\alias{col2hex}
\title{Colour to hex conversion.}
\usage{
col2hex(x, alpha = 1)
}
\arguments{
\item{x}{vector of colour names or hex strings}

\item{alpha}{optional transparency value in [0,1], can be per colour in \code{x}}
}
\value{
character string of hex colours
}
\description{
Create colours from colour names in one easy step.
}
\examples{
col2hex(c("aliceblue", "firebrick"), alpha = c(1, .5))
col2hex(c("#FFFFFF", "#123456FF"), alpha = 0.1)
}
