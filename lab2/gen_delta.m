# gen_delta, kt�ra na podstawie wygenerowanej tabeli z czasami pr�bek time
# generuje delt� Kroeneckera.

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
