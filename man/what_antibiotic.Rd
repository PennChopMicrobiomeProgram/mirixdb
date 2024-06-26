% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/what.R
\name{what_antibiotic}
\alias{what_antibiotic}
\title{Fetch susceptibility values for a given lineage and antibiotic}
\usage{
what_antibiotic(lineage, antibiotic, db = taxon_susceptibility)
}
\arguments{
\item{lineage}{A character vector of taxonomic assignments or lineages}

\item{antibiotic}{The name of the antibiotic or antibiotic class in \code{db}}

\item{db}{A data frame with columns named "taxon", "rank", "antibiotic",
and "value"}
}
\value{
A vector of assigned susceptibility values, which should be either
"susceptible", "resistant", or \code{NA}
}
\description{
Fetch susceptibility values for a given lineage and antibiotic
}
\details{
To determine susceptibility, the database is first filtered to include only
rows relevant to the antibiotic of interest. Then, the filtered database is
split into ranks. The susceptibility values are determined for each rank by
matching taxa from the rank-specific database to the vector of lineages.
If a lineage matches to multiple taxa of different ranks, the value of the
taxon with the lowest rank is selected.

The taxonomic ranks, in order from highest to lowest, are Kingdom, Phylum,
Class, Order, Family, Genus, and Species. The ranks in the database must be
capitalized, exactly as they are written here.
}
\examples{
what_antibiotic(
  c("Enterococcus faecalis", "Lactobacillus", "Lactobacillus delbrueckii"),
  "vancomycin")
}
