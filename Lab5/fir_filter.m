function [y] = fir_filter (x, b)
  N = length(x);
  Mb = length(b);
  y = zeros(1, N);
  for i=0:N-1
    for k=0:Mb-1
      if i-k>=0 
        y(i+1) += b(k+1) * x(i-k+1);
      endif
    endfor
  endfor
endfunction