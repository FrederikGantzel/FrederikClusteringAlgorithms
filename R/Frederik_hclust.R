#' Hierarchical Clustering Algorithm
#'
#' Computes clusterings for a dataset via the hierarchical clustering method
#'
#' @param matrix_of_data the input dataset. Must be a purely numeric matrix [observations x dimentions]
#' @param target_nr_of_clusters the desired number of clusters
#' @return a vector of length [observations] showing clusterings for all datapoints in the input data matrix
#' @export
#' @examples
#' data_set = as.matrix(iris[, -5])
#' Frederik_hclust(data_set, 3)

Frederik_hclust = function(matrix_of_data, target_nr_of_clusters) {
  data_size = nrow(matrix_of_data)

  #Create distance matrix
  distance_matrix = matrix(nrow = data_size, ncol = data_size)
  for (x in 1:data_size) {
    for (y in 1:data_size) {
      distance_matrix[x,y] = euclidDist(
        matrix_of_data[x,],
        matrix_of_data[y,]
      )
    }
  }

  cluster_ID = c(1:data_size)
  current_nr_of_clusters = data_size
  diag(distance_matrix) = NA
  distance_matrix[upper.tri(distance_matrix)] = NA

  while (current_nr_of_clusters > target_nr_of_clusters) {
    #find smallest distance
    smallest_distance = arrayInd(which.min(distance_matrix), dim(distance_matrix))
    #take minimum values from the two rows and columns
    combined_row = distance_matrix[smallest_distance[2],]
    combined_column = distance_matrix[,smallest_distance[2]]

    for( i in 1:smallest_distance[1]) {
      combined_row[i] = min(distance_matrix[smallest_distance[1],i],
                            distance_matrix[smallest_distance[2],i])
    }
    for ( i in data_size:smallest_distance[1]) {
      combined_column[i] = min(distance_matrix[i,smallest_distance[1]],
                               distance_matrix[i,smallest_distance[2]])
    }


    #combine the two clusters into one
    for (i in 1:data_size) {
      if (cluster_ID[i] == smallest_distance[1]) {
        cluster_ID[i] = smallest_distance[2]
      }
    }

    #take out rows and columns for the two previous clusters
    distance_matrix[smallest_distance[1],] = NA
    distance_matrix[,smallest_distance[1]] = NA
    #set in the row and column for the new combined cluster
    distance_matrix[smallest_distance[2],] = combined_row
    distance_matrix[,smallest_distance[2]] = combined_column

    #iterate
    current_nr_of_clusters = current_nr_of_clusters-1

  }

  return(cluster_ID)

}
