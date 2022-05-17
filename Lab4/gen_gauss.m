function gauss=gen_gauss(time, u, s)
  N=length(time);
  gauss=zeros(1,N);
  for n=1:N-1
    gauss(n)=exp(-(time(n)-u)^2/2*s^2);
  endfor
endfunction