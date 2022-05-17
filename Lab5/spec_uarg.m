function unw = spec_uarg (y)
  N = length(y);
  unw = zeros(1, N);
  for k=1:N
    if y(1)<y(2) || y(2)<y(3)
      unw(k) = y(k) + (k*2*pi);
    elseif  y(1)>y(2) || y(2)>y(3)
      unw(k) = y(k) - (k*2*pi);
    else
      unw(k)=y(k);
    endif
  endfor
  dif = unw(N/2);
  for k=1:N
    unw(k) -= dif;
  endfor
endfunction
