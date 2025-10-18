void kernel_atax(int nx, int ny, double A[4000 + 0][4000 + 0],
                 double x[4000 + 0], double y[4000 + 0], double tmp[4000 + 0]) {
  int i, j;

#pragma scop
  for (i = 0; i < ny; i++) {
    y[i] = 0;
  }
  for (i = 0; i < nx; i++) {
    tmp[i] = 0;
    for (j = 0; j < ny; j++)
      tmp[i] = tmp[i] + A[i][j] * x[j];
    for (j = 0; j < ny; j++)
      y[j] = y[j] + A[i][j] * tmp[i];
  }
#pragma endscop
}