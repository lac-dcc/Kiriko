void kernel_jacobi_2d_imper(int tsteps, int n, double A[1000 + 0][1000 + 0],
                            double B[1000 + 0][1000 + 0]) {
  int t, i, j;

#pragma scop
  for (t = 0; t < tsteps; t++) {
    for (i = 1; i < n - 1; i++)
      for (j = 1; j < n - 1; j++)
        B[i][j] = 0.2 * (A[i][j] + A[i][j - 1] + A[i][1 + j] + A[1 + i][j] +
                         A[i - 1][j]);
    for (i = 1; i < n - 1; i++)
      for (j = 1; j < n - 1; j++)
        A[i][j] = B[i][j];
  }
#pragma endscop
}