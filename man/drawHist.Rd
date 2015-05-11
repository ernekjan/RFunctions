\name{drawHist}
\alias{drawHist}
\title{drawHist}
\usage{
  drawHist(vec, widthOfBin, distribution)
}
\arguments{
	\item{vec}{Numeric vector containing data. Required.}
	\item{widthOfBin}{Width of histogram bin given from user. Required.}
	\item{distribution}{Chosen distribution to compare with.}
}
\description{
   Function for drawing histogram with given width of bin. If distribution value is given, function draws line of this distribution to the histogram to compare with.
}