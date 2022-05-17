# gen_delta, która na podstawie wygenerowanej tabeli z czasami próbek time
# generuje deltê Kroeneckera.

function signal = gen_delta(time)
  N = length(time);
  signal = zeros(1,N);
  signal(1) = 1;
endfunction

##function signal = gen_delta(time)
##  N = length(time);
##  signal = zeros(N);
##  signal(0) = 1;
##endfunction
