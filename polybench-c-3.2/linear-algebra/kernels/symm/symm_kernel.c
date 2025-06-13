void kernel_symm(int ni, int nj,
   double alpha,
   double beta,
   double C[1024 + 0][1024 + 0],
   double A[1024 + 0][1024 + 0],
   double B[1024 + 0][1024 + 0])
{
  int i, j, k;
  double acc;

#pragma scop

  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++)
      {
 acc = 0;
 for (k = 0; k < j - 1; k++)
   {
     C[k][j] += alpha * A[k][i] * B[i][j];
     acc += B[k][j] * A[k][i];
   }
 C[i][j] = beta * C[i][j] + alpha * A[i][i] * B[i][j] + alpha * acc;
      }
#pragma endscop

}