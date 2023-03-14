% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rse_barchart.R
\name{rse_barchart}
\alias{rse_barchart}
\title{A standardized horizontal barplot}
\usage{
rse_barchart(position = "dodge", colour = "grey", width = 0.5, min.size = 8)
}
\arguments{
\item{position}{Position adjustment, either as a string naming the adjustment
(e.g. "jitter" to use position_jitter), or the result of a call to a position
adjustment function. Use the latter if you need to change the settings of the adjustment.}

\item{colour}{The colour of the bar border border}

\item{width}{The bar width}

\item{min.size}{Minimum font size, in points. Text that would need to be shrunk
below this size to fit the box will be hidden. Default is 8.}
}
\description{
This function explots `ggplot2` features to draw a flipped barplot with standardized paramters
}