function [y] = fir_filter(x, b) 
  M = length(x);
  N = length(b);
  y = zeros(1, M);
   
  for n = 0: M-1 
    sum = 0;   
    for k = 0: N-1
      if n-k > 0 && n-k<M 
        sum += b(k+1) * x(n-k);
      endif                           
    endfor
    y(n+1) = sum;
  endfor
endfunction