\name{plot.likert}
\alias{plot.likert}
\title{Plots a set of likert items.}
\usage{
  \method{plot}{likert} (x,
    type = c("bar", "heat", "density"), ...)
}
\arguments{
  \item{x}{the likert items to plot}

  \item{type}{the type of plot to create. Current values
  are bar and heat.}

  \item{...}{other parameters passed passed to
  \code{\link{likert.bar.plot}} or
  \code{\link{likert.heat.plot}}.}
}
\description{
  Plots a set of likert items.
}
\seealso{
  likert.bar.plot

  likert.heat.plot

  likert.density.plot
}

