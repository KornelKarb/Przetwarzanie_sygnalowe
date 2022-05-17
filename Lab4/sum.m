function suma = sum (time, signal, signal2)
  N=length(time);
  for i=1:N
    suma(i)=signal2(i)+signal(i);
  endfor
endfunction
