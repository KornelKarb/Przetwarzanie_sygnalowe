function x=sig_irdft(y)
  N = length(y);
  x = zeros(1,N);
  for n=0:N-1
    sum = 0;
    for k=0:N/2-1
      sum += real(y(k+1))*cos(2*pi*k*n/N) - imag(y(k+1))*sin(2*pi*k*n/N);
    endfor 
    x(n+1) = sum;
  endfor
endfunction