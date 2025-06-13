void kernel_trisolv(int n,
      double A[4000 + 0][4000 + 0],
      double x[4000 + 0],
      double c[4000 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < n; i++)
    {
      x[i] = c[i];
      for (j = 0; j <= i - 1; j++)
        x[i] = x[i] - A[i][j] * x[j];
      x[i] = x[i] / A[i][i];
    }
#pragma endscop

}