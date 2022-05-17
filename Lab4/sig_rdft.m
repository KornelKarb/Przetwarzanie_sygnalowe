##Zadanie drugie polega na usuniêciu b³êdów z funkcji obliczaj¹cej DFT sygna³u
##rzeczywistego sig_rdft.


function y=sig_rdft(x) 
  N=length(x);
  y=zeros(1,N/2);
  for k=0:(N/2)-1
    Tr=0;
    Ti=0; 
      for n=0:N-1 
        if (k == 0)
          Tr+=x(n+1)*cos(2*pi*k*n/N); ##Wzór 6 w instrukcji n+1 bo nie od 0 
          Ti+=x(n+1)*sin(2*pi*k*n/N); ##2*x usuniêty poniewa¿ 
        else
          Tr+=2*x(n+1)*cos(2*pi*k*n/N);
          Ti+=2*x(n+1)*sin(2*pi*k*n/N);
        endif
      endfor
     y(k+1) = Tr/N + ((-1*Ti/N) * 1i);
  endfor
endfunction

##function y=sig_rdft(x)
##  N=length(x);
##  y=zeros(1,N/2+1);
##  for k=0:N/2 
##    Tr=0;
##    Ti=0;
  ##    for n=0:N-1
  ##      Tr+=2*x(n)*cos(2*pi*k*n/N)/N;
  ##      Ti+=-2*x(n)*sin(2*pi*k*n/N)/N;
  ##    endfor
##    y(k+1) = Tr + 1i * Ti;
##  endfor
##endfunction