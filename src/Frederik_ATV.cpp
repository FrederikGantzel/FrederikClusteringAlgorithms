#include "Frederik_ATV.h"

int Frederik_ATV(
    const double *first_vector, //first vector, with length n_length
    const double *second_vector, //second vector, with length n_length
    const int first_length, //length of the first vector
    const int second_length, //length of the second vector
    double *resulting_vector //the resulting vector, length n_length
) {
  
  if (!(first_length > 0) || !(second_length > 0)) {
    return ERROR_VECTOR_LENGTH_MUST_BE_GREATER_THAN_ZERO;
  }
  if (first_length != second_length) {
    return ERROR_VECTORS_MUST_HAVE_SAME_LENGTH;
  }
  
  for(int i=0; i<first_length; i++) {
    resulting_vector[i] =
      first_vector[i] + second_vector[i];
  }
  
  return 0;
}