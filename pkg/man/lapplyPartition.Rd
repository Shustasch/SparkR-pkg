% Generated by roxygen2 (4.0.2): do not edit by hand
\docType{methods}
\name{lapplyPartition}
\alias{lapplyPartition}
\alias{lapplyPartition,RDD,function-method}
\alias{mapPartitions}
\alias{mapPartitions,RDD,function-method}
\title{Apply a function to each partition of an RDD}
\usage{
lapplyPartition(X, FUN)

\S4method{lapplyPartition}{RDD,`function`}(X, FUN)

mapPartitions(X, FUN)

\S4method{mapPartitions}{RDD,`function`}(X, FUN)
}
\arguments{
\item{X}{The RDD to apply the transformation.}

\item{FUN}{the transformation to apply on each partition.}
}
\value{
a new RDD created by the transformation.
}
\description{
Return a new RDD by applying a function to each partition of this RDD.

mapPartitions is the same as lapplyPartition.
}
\examples{
\dontrun{
sc <- sparkR.init()
rdd <- parallelize(sc, 1:10)
partitionSum <- lapplyPartition(rdd, function(part) { Reduce("+", part) })
collect(partitionSum) # 15, 40
}
}

