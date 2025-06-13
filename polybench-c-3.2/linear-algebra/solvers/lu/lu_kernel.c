void kernel_lu(int n,
        double A[1024 + 0][1024 + 0])
{
  int i, j, k;

#pragma scop
  for (k = 0; k < n; k++)
    {
      for (j = k + 1; j < n; j++)
 A[k][j] = A[k][j] / A[k][k];
      for(i = k + 1; i < n; i++)
 for (j = k + 1; j < n; j++)
   A[i][j] = A[i][j] - A[i][k] * A[k][j];
    }
#pragma endscop

}