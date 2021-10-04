
#' Frederik Add Two Vectors
#' 
#' Adds two vectors together
#'
#' @param first_vector numeric vector of size n
#' @param second_vector numeric vector of size n
#'
#' @return the vector resulting from adding the two input vectors together. Numeric with size n
#' @export
#'
#' @examples
#' first_vector= c(1.5,2.5,3.5)
#' second_vector = c(4.5, 5.5, 6.5)
#' Frederik_ATV(first_vector, second_vector)
Frederik_ATV = function(first_vector, second_vector) {
  result.list = .C("Frederik_ATV_interface",
              as.double(first_vector),
              as.double(second_vector),
              as.integer(length(first_vector)),
              as.integer(length(second_vector)),
              result_vector = double(as.integer(length(first_vector))),
              PACKAGE="FrederikClusteringAlgorithms")
  
  return(result.list$result_vector)
  
}

