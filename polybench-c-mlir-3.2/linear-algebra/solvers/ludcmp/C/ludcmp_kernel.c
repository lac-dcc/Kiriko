void kernel_ludcmp(int n, double A[1024 + 1 + 0][1024 + 1 + 0],
                   double b[1024 + 1 + 0], double x[1024 + 1 + 0],
                   double y[1024 + 1 + 0]) {
  int i, j, k;

  double w;

#pragma scop
  b[0] = 1.0;
  for (i = 0; i < n; i++) {
    for (j = i + 1; j <= n; j++) {
      w = A[j][i];
      for (k = 0; k < i; k++)
        w = w - A[j][k] * A[k][i];
      A[j][i] = w / A[i][i];
    }
    for (j = i + 1; j <= n; j++) {
      w = A[i + 1][j];
      for (k = 0; k <= i; k++)
        w = w - A[i + 1][k] * A[k][j];
      A[i + 1][j] = w;
    }
  }
  y[0] = b[0];
  for (i = 1; i <= n; i++) {
    w = b[i];
    for (j = 0; j < i; j++)
      w = w - A[i][j] * y[j];
    y[i] = w;
  }
  x[n] = y[n] / A[n][n];
  for (i = 0; i <= n - 1; i++) {
    w = y[n - 1 - (i)];
    for (j = n - i; j <= n; j++)
      w = w - A[n - 1 - i][j] * x[j];
    x[n - 1 - i] = w / A[n - 1 - (i)][n - 1 - (i)];
  }
#pragma endscop
}