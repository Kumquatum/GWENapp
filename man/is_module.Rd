% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{is_module}
\alias{is_module}
\title{Determine if an object is a module or a list of modules}
\usage{
is_module(module, is_list = FALSE)
}
\arguments{
\item{module}{vector or list, object to test to be a module or list of
modules}

\item{is_list}{boolean, indicate if module must be tested as a single module
or a list of modules}
}
\value{
list, a boolean as first element and in second element NULL or the
reason why boolean is set to FALSE
}
\description{
Check content of a given object to determine if it's a module or a list of
modules, meaning a single vector of characters which are gene names, or a
named list of these vectors
}
\examples{
single_module <- c("BIRC3", "PMAIP1", "CASP8", "JUN", "BCL2L11", "MCL1",
                   "IL1B", "SPTAN1", "DIABLO", "BAX", "BIK", "IL1A", "BID",
                   "CDKN1A", "GADD45A")
is_module(single_module)

multi_module <- list(mod1 = single_module,
                     mod2 = c("TAF1C", "TARBP2", "POLH", "CETN2", "POLD1",
                     "CANT1", "PDE4B", "DGCR8", "RAD51", "SURF1", "PNP",
                     "ADA", "NME3", "GTF3C5", "NT5C"))
is_module(multi_module$modules, is_list = TRUE)

}
