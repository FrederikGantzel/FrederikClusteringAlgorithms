#' Euclidean Distance
#'
#' Computes the euclidean distance between two points with equal dimentions
#'
#' @param point1 the first point (numeric value / numeric vector)
#' @param point2 the first point (numeric value / numeric vector)
#' @return the euclidean distance between the points (numeric value)
#' @export
#' @examples
#' euclidDist(15, 30)
#' euclidDist(c(1,2,3), c(4,5,6))

euclidDist = function(point1, point2) {
  return(sqrt(sum((point1 - point2)^2)))
}
