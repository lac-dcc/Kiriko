extern double sqrt(double);
void kernel_correlation(int m, int n, double float_n,
                        double data[1000 + 0][1000 + 0],
                        double symmat[1000 + 0][1000 + 0],
                        double mean[1000 + 0], double stddev[1000 + 0]) {
  int i, j, j1, j2;

  double eps = 0.1f;

#pragma scop

  for (j = 0; j < m; j++) {
    mean[j] = 0.0;
    for (i = 0; i < n; i++)
      mean[j] += data[i][j];
    mean[j] /= float_n;
  }

  for (j = 0; j < m; j++) {
    stddev[j] = 0.0;
    for (i = 0; i < n; i++)
      stddev[j] += (data[i][j] - mean[j]) * (data[i][j] - mean[j]);
    stddev[j] /= float_n;
    stddev[j] = sqrt(stddev[j]);

    stddev[j] = stddev[j] <= eps ? 1.0 : stddev[j];
  }

  for (i = 0; i < n; i++)
    for (j = 0; j < m; j++) {
      data[i][j] -= mean[j];
      data[i][j] /= sqrt(float_n) * stddev[j];
    }

  for (j1 = 0; j1 < m - 1; j1++) {
    symmat[j1][j1] = 1.0;
    for (j2 = j1 + 1; j2 < m; j2++) {
      symmat[j1][j2] = 0.0;
      for (i = 0; i < n; i++)
        symmat[j1][j2] += (data[i][j1] * data[i][j2]);
      symmat[j2][j1] = symmat[j1][j2];
    }
  }
  symmat[m - 1][m - 1] = 1.0;
#pragma endscop
}