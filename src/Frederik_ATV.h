#define ERROR_VECTOR_LENGTH_MUST_BE_GREATER_THAN_ZERO 1
#define ERROR_VECTORS_MUST_HAVE_SAME_LENGTH 2


int Frederik_ATV(
    const double *first_vector, //first vector, with length n_length
    const double *second_vector, //second vector, with length n_length
    const int first_length, //length of the first vector
    const int second_length, //length of the second vector
    double *resulting_vector //the resulting vector, length n_length
);