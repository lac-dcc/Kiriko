void kernel_mvt(int n,
  double x1[4000 + 0],
  double x2[4000 + 0],
  double y_1[4000 + 0],
  double y_2[4000 + 0],
  double A[4000 + 0][4000 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      x1[i] = x1[i] + A[i][j] * y_1[j];
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      x2[i] = x2[i] + A[j][i] * y_2[j];
#pragma endscop

}