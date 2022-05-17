#time - czas
#u - srodek impulsu
#n - numer probki
##gen_gauss,  która  na  podstawie  wygenerowanej  tabeli  z  czasami  próbek time 
##generujeimpuls Gaussa o œrodku w czasieui szerokoœci impulsus(równanie 1)

function signal=gen_gauss(time, u, s)
  N = length(time);
  signal = zeros(1,N);
  for n=1:N
    signal(n) = exp(-(time(n)-u)^2/(2*s^2));
  endfor
endfunction

##function signal=gen_gauss(time, u, s)
##  N = length(time);
##  signal = zeros(1,N);
##  for n=1:N-1
##    signal(n) = exp(-(time(n)-u)^2/2*s^2);
##  endfor
##endfunction