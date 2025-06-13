void kernel_covariance(int m, int n,
         double float_n,
         double data[1000 + 0][1000 + 0],
         double symmat[1000 + 0][1000 + 0],
         double mean[1000 + 0])
{
  int i, j, j1, j2;

#pragma scop

  for (j = 0; j < m; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < n; i++)
        mean[j] += data[i][j];
      mean[j] /= float_n;
    }


  for (i = 0; i < n; i++)
    for (j = 0; j < m; j++)
      data[i][j] -= mean[j];


  for (j1 = 0; j1 < m; j1++)
    for (j2 = j1; j2 < m; j2++)
      {
        symmat[j1][j2] = 0.0;
        for (i = 0; i < n; i++)
   symmat[j1][j2] += data[i][j1] * data[i][j2];
        symmat[j2][j1] = symmat[j1][j2];
      }
#pragma endscop

}