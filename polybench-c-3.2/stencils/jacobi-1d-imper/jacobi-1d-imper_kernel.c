void kernel_jacobi_1d_imper(int tsteps,
       int n,
       double A[10000 + 0],
       double B[10000 + 0])
{
  int t, i, j;

#pragma scop
  for (t = 0; t < tsteps; t++)
    {
      for (i = 1; i < n - 1; i++)
 B[i] = 0.33333 * (A[i-1] + A[i] + A[i + 1]);
      for (j = 1; j < n - 1; j++)
 A[j] = B[j];
    }
#pragma endscop

}