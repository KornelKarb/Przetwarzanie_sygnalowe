function cfreq = gen_cfreq (N,fs)
  cfreq=zeros(1, N);
    for k=1:N
      cfreq(k)=(k-1)*fs/N;
    endfor
endfunction
