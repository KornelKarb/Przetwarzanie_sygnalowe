function b = fir_inv(b1)
  M = length(b1);
  b = zeros(1, M);
  for k = 0:M-1
    if(k-((M-1)/2) == 0)
      b(k+1) = 1 - b1(k+1);
    else b(k+1) =- b1(k+1);
    endif
  endfor
endfunction