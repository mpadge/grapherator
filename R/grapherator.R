#' @title Graph object.
#'
#' @description S3 object describing a graph with the following fields:
#' \describe{
#'   \item{lower [\code{numeric(2)}]}{Lower bounds for node coordinates in the Euclidean plane.}
#'   \item{upper [\code{numeric(2)}]}{Upper bounds for node coordinates in the Euclidean plane.}
#'   \item{n.clusters [\code{integer(1)}]}{Number of clusters.}
#'   \item{n.nodes [\code{integer(1)}]}{Number of nodes.}
#'   \item{n.edges [\code{integer(1)}]}{Number of edges.}
#'   \item{n.weights [\code{integer(1)}]}{Number of weights associated with each edge.}
#'   \item{node.types [\code{character}]}{Character vector describing the node generators used to create nodes.}
#'   \item{edge.types [\code{character}]}{Character vector describing the node generators used to create edges.}
#'   \item{weight.types [\code{character}]}{Character vector describing the node generators used to create weights.}
#'   \item{weights [\code{list} of \code{matrix}]}{List of weight/distance/cost matrizes.}
#'   \item{degree [\code{integer}]}{Integer vector of node degrees.}
#'   \item{membership [\code{integer} | \code{NULL}]}{Integer vector which stores the cluster membership of each node. Not \code{NULL} only if graph is clustered.}
#'   \item{coordinates [\code{matrix(n.nodes, 2)}]}{Matrix of node coordinates. Each row contains the node coordinates of one node.}
#' }
#'
#' @name grapherator
#' @rdname grapherator
NULL
