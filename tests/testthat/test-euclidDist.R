library(FrederikClusteringAlgorithms)
library(testthat)
library(stats)
context("euclidDist")

test_that("euclidDist outputs the same as R euclidean distance function",
          {point_a = c(3,3,3)
          point_b = c(6,6,6)
          R_euclidean = as.numeric( stats::dist(rbind(point_a, point_b), 
                                                method = "euclidean"))
          this_euclidean = euclidDist(point_a, point_b)
          expect_equal(R_euclidean, this_euclidean)
          }
)