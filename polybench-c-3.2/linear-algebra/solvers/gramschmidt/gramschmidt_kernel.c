extern double sqrt(double);
void kernel_gramschmidt(int ni, int nj,
   double A[512 + 0][512 + 0],
   double R[512 + 0][512 + 0],
   double Q[512 + 0][512 + 0])
{
  int i, j, k;

  double nrm;

#pragma scop
  for (k = 0; k < nj; k++)
    {
      nrm = 0;
      for (i = 0; i < ni; i++)
        nrm += A[i][k] * A[i][k];
      R[k][k] = sqrt(nrm);
      for (i = 0; i < ni; i++)
        Q[i][k] = A[i][k] / R[k][k];
      for (j = k + 1; j < nj; j++)
 {
   R[k][j] = 0;
   for (i = 0; i < ni; i++)
     R[k][j] += Q[i][k] * A[i][j];
   for (i = 0; i < ni; i++)
     A[i][j] = A[i][j] - Q[i][k] * R[k][j];
 }
    }
#pragma endscop

}
