void kernel_syrk(int ni, int nj, double alpha, double beta,
                 double C[1024 + 0][1024 + 0], double A[1024 + 0][1024 + 0]) {
  int i, j, k;

#pragma scop

  for (i = 0; i < ni; i++)
    for (j = 0; j < ni; j++)
      C[i][j] *= beta;
  for (i = 0; i < ni; i++)
    for (j = 0; j < ni; j++)
      for (k = 0; k < nj; k++)
        C[i][j] += alpha * A[i][k] * A[j][k];
#pragma endscop
}