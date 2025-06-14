void kernel_trmm(int ni, double alpha, double A[1024 + 0][1024 + 0],
                 double B[1024 + 0][1024 + 0]) {
  int i, j, k;

#pragma scop

  for (i = 1; i < ni; i++)
    for (j = 0; j < ni; j++)
      for (k = 0; k < i; k++)
        B[i][j] += alpha * A[i][k] * B[j][k];
#pragma endscop
}