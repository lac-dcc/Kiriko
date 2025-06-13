void kernel_gemm(int ni, int nj, int nk, double alpha, double beta,
                 double C[1024 + 0][1024 + 0], double A[1024 + 0][1024 + 0],
                 double B[1024 + 0][1024 + 0]) {
  int i, j, k;

#pragma scop

  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++) {
      C[i][j] *= beta;
      for (k = 0; k < nk; ++k)
        C[i][j] += alpha * A[i][k] * B[k][j];
    }
#pragma endscop
}