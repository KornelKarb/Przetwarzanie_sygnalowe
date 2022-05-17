function y=sig_rdft(x) 
  N=length(x);
  y=zeros(1,N/2);
  for k=0:N/2-1
    Tr=0;
    Ti=0; 
    for n=0:N-1 
      Tr+=x(n+1)*cos(2*pi*k*n/N); 
      Ti+=x(n+1)*sin(2*pi*k*n/N);
    endfor 
   y(k+1) = 2*Tr/N + ((-2*Ti/N) * 1i) ;
  endfor
endfunction