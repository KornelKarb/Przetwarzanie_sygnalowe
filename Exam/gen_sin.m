function signal = gen_sin(time, fsin, A, fi)
  signal = A * sin(time*fsin*2*pi + deg2rad(fi));
endfunction