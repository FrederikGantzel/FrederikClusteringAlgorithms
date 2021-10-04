library(FrederikClusteringAlgorithms)
library(testthat)
context("Frederik_hclust")

test_that("Frederik_hclust outputs vector of length [observations]",
          {data_set = as.matrix(iris[, -5])
          clusterings = Frederik_hclust(data_set, 3)
          expect_equal(nrow(data_set),
                       length(clusterings))
          }
)
test_that("Frederik_hclust outputs vector with same number of unique values as input K",
          {data_set = as.matrix(iris[, -5])
          K = 3
          clusterings = Frederik_hclust(data_set, K)
          expect_equal(K, length(unique(clusterings)))
          }
)