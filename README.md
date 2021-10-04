# FrederikClusteringAlgorithms
Clustering algorithms for CS599 "Unsipervised Learning" R package project 1, NAU, Fall semester 2021

#Installation
run the following R commands:
if(!requireNamespace("remotes"))install.packages("remotes")
remotes::install_github("FrederikGantzel/FrederikClusteringAlgorithms")

#Usage
Provides three functions to analyze data.

Frederik_hclust is a Hierarchical clustering algorithm that takes a numeric data matrix as input, and outputs a vector showing clusterings for all observations in the input data matrix. Some example code:
data_set = as.matrix(iris[, -5])
Frederik_hclust(data_set, 3)

euclidDist is a function that takes two vectors as input, and calculates the euclidean distance between the two. Some example code:
euclidDist(c(1,2,3), c(4,5,6))

Frederik_AVT is a function that takes two vectors as input and adds them together. The two vectors must have the same length. Some example code:
first_vector= c(1.5,2.5,3.5)
second_vector = c(4.5, 5.5, 6.5)
Frederik_ATV(first_vector, second_vector)
