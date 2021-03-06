% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generators-node.R
\name{nodeGenerators}
\alias{nodeGenerators}
\alias{addNodesLHS}
\alias{addNodesUniform}
\alias{addNodesTriangular}
\alias{addNodesGrid}
\alias{addNodesNormal}
\title{Node generators.}
\usage{
addNodesLHS(n, lower = 0, upper = 1, method = NULL)

addNodesUniform(n, lower, upper)

addNodesTriangular(n, lower, upper)

addNodesGrid(n, lower, upper)

addNodesNormal(n, lower, upper, x.mean, x.sd, y.mean, y.sd)
}
\arguments{
\item{n}{[\code{integer(1)}]\cr
Number of nodes to generate.}

\item{lower}{[\code{numeric(2)}]\cr
Minimal values for the first and second node coordinates respectively.
Default is 0 for both dimensions.}

\item{upper}{[\code{numeric(2)}]\cr
Maximal values for the first and second node coordinates respectively.
Default is 1 for both dimensions.}

\item{method}{[\code{function}]\cr
Function from package \pkg{lhs}.
Default is \code{\link[lhs]{maximinLHS}}.
Only relevant for \code{\link{addNodesLHS}}.}

\item{x.mean}{[\code{numeric}]\cr
Mean value of normal distribution for x-value generation.
Only relevant for \code{\link{addNodesNormal}}.}

\item{x.sd}{[\code{numeric}]\cr
Standard deviation of normal distribution for x-value generation.
Only relevant for \code{\link{addNodesNormal}}.}

\item{y.mean}{[\code{numeric}]\cr
Mean value of normal distribution for y-value generation.
Only relevant for \code{\link{addNodesNormal}}.}

\item{y.sd}{[\code{numeric}]\cr
Standard deviation of normal distribution for y-value generation.
Only relevant for \code{\link{addNodesNormal}}.}
}
\value{
[\code{list}] List with components:
\describe{
  \item{coords [\code{matrix(n, 2)}]}{Matrix of node coordinates.}
  \item{generator [\code{character(1)}]}{String description of the generator used.}
}
}
\description{
Functions for the placement of nodes / node coordinates in the
Euclidean plane. Function \code{addNodesLHS} generates a space-filling
Latin-Hypercube-Sample (LHS), function \code{addNodesUniform} samples points from a
bivariate uniform distribution, \code{addNodesGrid} generates a regular
grid/lattice of points, \code{addNodesTriangular} generates a regular triangular
grid/lattice and \code{addNodesNormal} generates nodes on basis of a normal
distribution.
}
\note{
These functions are not meant to be called directly. Instead, they need
to be assigned to the \code{generator} argument of \code{\link{addNodes}}.
}
