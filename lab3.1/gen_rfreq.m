function freq = gen_rfreq(N, fs) 
  freq = zeros(1, N/2);
  for k = 0:N/2-1         
    freq(k+1) = k*fs/N;   
  endfor
endfunction