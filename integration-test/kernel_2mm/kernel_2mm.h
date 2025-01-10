#define NI 7
#define NJ 7
#define NK 7
#define NL 7

typedef int in_int_t;
typedef int out_int_t;
typedef int inout_int_t;

int kernel_2mm(in_int_t alpha, in_int_t beta, inout_int_t tmp[NI][NJ],
                in_int_t A[NI][NK], in_int_t B[NK][NJ], in_int_t C[NK][NL],
                inout_int_t D[NI][NL]);
