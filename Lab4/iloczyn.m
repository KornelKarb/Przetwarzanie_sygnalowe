function mnoz = iloczyn(time, sin, gauss)
    N=length(time);
  for i=1:N
    mnoz(i)=gauss(i).*sin(i);
  endfor
endfunction
