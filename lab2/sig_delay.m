##sig_delay_N, która opóŸnia sygna³ x o Nd próbek

function y = sig_delay(x, Nd)
  N = length(x);
  y = zeros(1, N);
  for i=1:N-Nd
    y(i+Nd) = x(i);
  endfor
endfunction

##function y = sig_delay_N(x, Nd)
##  N = length(x);
##  y = zeros(1, N);
##  for i=0:N-Nd-1
##    y(i+Nd) = x(i);
##  endfor
##endfunction