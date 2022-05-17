##Zadanie  trzecie  polega  na  napisaniu  cia³a  funkcjisig_irdftobliczaj¹cej  
##odwrotn¹  DFTsygna³u rzeczywistego.

function x=sig_irdft(y)
  N = length(y);
  x = zeros(1,N);
  for n=0:N-1
    Tr = 0;
    Ti = 0;
    for k=0:N/2-1
      Tr += real(y(k+1))*cos(2*pi*k*n/N); 
      Ti += imag(y(k+1))*sin(2*pi*k*n/N);
    endfor 
    x(n+1) = Tr - Ti;
  endfor
endfunction

