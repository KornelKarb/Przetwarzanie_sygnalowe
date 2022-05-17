function time = gen_time(N, fs)
  time = zeros(1, N);
  for (i = 1:N-1)
    time(i+1) = i/fs;
  endfor
endfunction