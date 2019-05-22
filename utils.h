#include <pthread.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

double get_sec(clockid_t cid);
void randomize_matrix(double *A, int m, int n);