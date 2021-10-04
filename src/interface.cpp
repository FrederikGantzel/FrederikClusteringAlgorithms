#include "Frederik_ATV.h"
#include "R.h"
#include "R_ext/Rdynload.h"
#include "Rcpp.h"

void Frederik_ATV_interface(
    const double *first_vector_ptr,
    const double *second_vector_ptr,
    const int *first_length_ptr,
    const int *second_length_ptr,
    double *resulting_vector_ptr
) {
  int status = Frederik_ATV(first_vector_ptr,
                            second_vector_ptr,
                            *first_length_ptr,
                            *second_length_ptr,
                            resulting_vector_ptr);
  if (status == ERROR_VECTOR_LENGTH_MUST_BE_GREATER_THAN_ZERO) {
    error("Both input vectors must have length greater than 0");
  }
  if (status == ERROR_VECTORS_MUST_HAVE_SAME_LENGTH) {
    error("Both input vectors must have the same length");
  }
}

R_CMethodDef cMethods[] = {
  {"Frederik_ATV_interface",
   (DL_FUNC) &Frederik_ATV_interface,
   5},
   {NULL, NULL, 0}
};

extern "C" {
  void R_init_FrederikClusteringAlgorithms(DllInfo *info) {
    R_registerRoutines(info, cMethods, NULL, NULL, NULL);
    R_useDynamicSymbols(info, FALSE);
  }
}

