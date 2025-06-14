void kernel_fdtd_apml(int cz, int cxm, int cym, double mui, double ch,
                      double Ax[256 + 1 + 0][256 + 1 + 0],
                      double Ry[256 + 1 + 0][256 + 1 + 0],
                      double clf[256 + 1 + 0][256 + 1 + 0],
                      double tmp[256 + 1 + 0][256 + 1 + 0],
                      double Bza[256 + 1 + 0][256 + 1 + 0][256 + 1 + 0],
                      double Ex[256 + 1 + 0][256 + 1 + 0][256 + 1 + 0],
                      double Ey[256 + 1 + 0][256 + 1 + 0][256 + 1 + 0],
                      double Hz[256 + 1 + 0][256 + 1 + 0][256 + 1 + 0],
                      double czm[256 + 1 + 0], double czp[256 + 1 + 0],
                      double cxmh[256 + 1 + 0], double cxph[256 + 1 + 0],
                      double cymh[256 + 1 + 0], double cyph[256 + 1 + 0]) {
  int iz, iy, ix;

#pragma scop
  for (iz = 0; iz < cz; iz++) {
    for (iy = 0; iy < cym; iy++) {
      for (ix = 0; ix < cxm; ix++) {
        clf[iz][iy] = Ex[iz][iy][ix] - Ex[iz][iy + 1][ix] + Ey[iz][iy][ix + 1] -
                      Ey[iz][iy][ix];
        tmp[iz][iy] = (cymh[iy] / cyph[iy]) * Bza[iz][iy][ix] -
                      (ch / cyph[iy]) * clf[iz][iy];
        Hz[iz][iy][ix] = (cxmh[ix] / cxph[ix]) * Hz[iz][iy][ix] +
                         (mui * czp[iz] / cxph[ix]) * tmp[iz][iy] -
                         (mui * czm[iz] / cxph[ix]) * Bza[iz][iy][ix];
        Bza[iz][iy][ix] = tmp[iz][iy];
      }
      clf[iz][iy] =
          Ex[iz][iy][cxm] - Ex[iz][iy + 1][cxm] + Ry[iz][iy] - Ey[iz][iy][cxm];
      tmp[iz][iy] = (cymh[iy] / cyph[iy]) * Bza[iz][iy][cxm] -
                    (ch / cyph[iy]) * clf[iz][iy];
      Hz[iz][iy][cxm] = (cxmh[cxm] / cxph[cxm]) * Hz[iz][iy][cxm] +
                        (mui * czp[iz] / cxph[cxm]) * tmp[iz][iy] -
                        (mui * czm[iz] / cxph[cxm]) * Bza[iz][iy][cxm];
      Bza[iz][iy][cxm] = tmp[iz][iy];
      for (ix = 0; ix < cxm; ix++) {
        clf[iz][iy] = Ex[iz][cym][ix] - Ax[iz][ix] + Ey[iz][cym][ix + 1] -
                      Ey[iz][cym][ix];
        tmp[iz][iy] = (cymh[cym] / cyph[iy]) * Bza[iz][iy][ix] -
                      (ch / cyph[iy]) * clf[iz][iy];
        Hz[iz][cym][ix] = (cxmh[ix] / cxph[ix]) * Hz[iz][cym][ix] +
                          (mui * czp[iz] / cxph[ix]) * tmp[iz][iy] -
                          (mui * czm[iz] / cxph[ix]) * Bza[iz][cym][ix];
        Bza[iz][cym][ix] = tmp[iz][iy];
      }
      clf[iz][iy] =
          Ex[iz][cym][cxm] - Ax[iz][cxm] + Ry[iz][cym] - Ey[iz][cym][cxm];
      tmp[iz][iy] = (cymh[cym] / cyph[cym]) * Bza[iz][cym][cxm] -
                    (ch / cyph[cym]) * clf[iz][iy];
      Hz[iz][cym][cxm] = (cxmh[cxm] / cxph[cxm]) * Hz[iz][cym][cxm] +
                         (mui * czp[iz] / cxph[cxm]) * tmp[iz][iy] -
                         (mui * czm[iz] / cxph[cxm]) * Bza[iz][cym][cxm];
      Bza[iz][cym][cxm] = tmp[iz][iy];
    }
  }
#pragma endscop
}