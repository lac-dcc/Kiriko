void kernel_gesummv(int n, double alpha, double beta,
                    double A[4000 + 0][4000 + 0], double B[4000 + 0][4000 + 0],
                    double tmp[4000 + 0], double x[4000 + 0],
                    double y[4000 + 0]) {
  int i, j;

#pragma scop
  for (i = 0; i < n; i++) {
    tmp[i] = 0;
    y[i] = 0;
    for (j = 0; j < n; j++) {
      tmp[i] = A[i][j] * x[j] + tmp[i];
      y[i] = B[i][j] * x[j] + y[i];
    }
    y[i] = alpha * tmp[i] + beta * y[i];
  }
#pragma endscop
}