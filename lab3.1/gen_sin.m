function signal=gen_sin(time, fsin, A, fi)
  signal = zeros(1, length(time));
  for i=1:length(time)
    signal(i) = A*sin(time(i) * (2*pi*fsin) + fi);
  endfor
endfunction