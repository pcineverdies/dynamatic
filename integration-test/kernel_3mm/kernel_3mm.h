#define NI 7
#define NJ 7
#define NK 7
#define NL 7
#define NM 7
#define N 7

typedef int in_int_t;
typedef int out_int_t;
typedef int inout_int_t;

void kernel_3mm(in_int_t A[NI][NK], in_int_t B[NK][NJ], in_int_t C[NJ][NM],
                in_int_t D[NM][NL], inout_int_t E[NI][NJ],
                inout_int_t F[NJ][NL], inout_int_t G[NI][NL]);
