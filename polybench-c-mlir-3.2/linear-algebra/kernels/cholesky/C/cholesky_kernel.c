extern double sqrt(double);
void kernel_cholesky(int n, double p[1024 + 0], double A[1024 + 0][1024 + 0]) {
  int i, j, k;

  double x;

#pragma scop
  for (i = 0; i < n; ++i) {
    x = A[i][i];
    for (j = 0; j <= i - 1; ++j)
      x = x - A[i][j] * A[i][j];
    p[i] = 1.0 / sqrt(x);
    for (j = i + 1; j < n; ++j) {
      x = A[i][j];
      for (k = 0; k <= i - 1; ++k)
        x = x - A[j][k] * A[i][k];
      A[j][i] = x * p[i];
    }
  }
#pragma endscop
}
