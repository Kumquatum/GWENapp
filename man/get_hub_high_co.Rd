% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/topology.R
\name{get_hub_high_co}
\alias{get_hub_high_co}
\title{Determine hub genes based on connectivity}
\usage{
get_hub_high_co(network, modules = NULL, top_n = 5)
}
\arguments{
\item{network}{matrix or data.frame, square table representing connectivity
between each genes as returned by build_net. Can be whole network or a
single module.}

\item{modules}{list, modules defined as list of gene vectors. If null,
network is supposed to be the whole network or an already split module}

\item{top_n}{integer, number of genes to be considered as hub genes}
}
\value{
A list of vectors, or single vector of gene names
}
\description{
Compute connectivity of each gene by module if provided or for whole network
if not, and return the top_n highest connected ones.
}
\examples{
mat <- matrix(runif(40*40), 40)
colnames(mat) <- paste0("gene_", seq_len(ncol(mat)))
rownames(mat) <- paste0("gene_", seq_len(nrow(mat)))
get_hub_high_co(mat)

}
