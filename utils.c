#include "utils.h"
#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>

double get_sec(clockid_t cid)
{
    struct timespec ts;
    clock_gettime(cid, &ts);
    //printf("%4ld.%03ld\n", ts.tv_sec, ts.tv_nsec / 1000000);
    return (ts.tv_sec + 1e-9 * ts.tv_nsec);
}

void randomize_matrix(double *A, int m, int n)
{
    srand(time(NULL));
    int i, j;
    for (i = 0; i < m; i++)
    {
        for (j = 0; j < n; j++)
        {
            A[i * n + j] = (double)(rand() % 100) + 0.01 * (rand() % 100);
        }
    }
}