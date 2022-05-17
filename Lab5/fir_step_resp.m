function [y, t] = fir_step_resp (b, N, fs)
  t = zeros(1,N);
  zer = ones(1,N);
  zer(1) = 0;
  zer(2) = 0;
  zer(3) = 0;
  for k=0:N-1
    t(k+1)=(k/fs);
    if k==0
      zer(k+1)=0;
    endif
  endfor
  y=fir_filter(zer, b);
endfunction
