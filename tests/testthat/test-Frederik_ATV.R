library(FrederikClusteringAlgorithms)
library(testthat)
context("Frederik_ATV")

test_that("Frederik_ATV outputs vector of same length as input vectors",
          {first_vector= c(1.5,2.5,3.5)
           second_vector = c(4.5, 5.5, 6.5)
           result_vector = Frederik_ATV(first_vector, second_vector)
           expect_equal(length(result_vector),
                        length(first_vector),
                        length(second_vector))
           }
          )