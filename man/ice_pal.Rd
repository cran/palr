% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palr.R
\name{ice_pal}
\alias{ice_pal}
\alias{icePal}
\title{Sea ice colours}
\usage{
ice_pal(x, palette = FALSE, alpha = 1, ..., amsre = FALSE)

icePal(x, palette = FALSE, alpha = 1, ...)
}
\arguments{
\item{x}{a vector of data values or a single num (n)}

\item{palette}{logical, if \code{TRUE} return a list with matching colours and values}

\item{alpha}{value in 0,1 to specify opacity}

\item{...}{currently ignored}

\item{amsre}{use old AMSRE colours (`FALSE` by default)}
}
\value{
colours, palette, or function, see Details
}
\description{
Colours for sea ice.
}
\details{
The palette functions operate in 3 modes:
1) n colours - Pal(6) - returns 6 colours from the palette
2) data      - Pal(c(10, 50, 100)) - return colours for 3 ice concentrations
3) palette   - Pal(palette = TRUE) - return the full palette and breaks
}
\examples{
\dontrun{
library(raster)
r <- raster(system.file("extdata", "nt_20140320_f17_v01_s.bin", package = "graticule") )
icp <- ice_pal(palette = TRUE)
## The AMSR colours
plot(r, col = icp$col, zlim = range(icp$breaks),
main = sprintf("NSIDC ice \\\\\% \%s", format(getZ(r))))
}
}
\references{
amsre colours derived from \url{http://www.iup.uni-bremen.de/seaice/amsr/}.,
 nsidc colours extracted in data-raw/.
}
