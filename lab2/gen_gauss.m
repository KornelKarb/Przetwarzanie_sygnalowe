#time - czas
#u - srodek impulsu
#n - numer probki
##gen_gauss,  kt�ra  na  podstawie  wygenerowanej  tabeli  z  czasami  pr�bek time 
##generujeimpuls Gaussa o �rodku w czasieui szeroko�ci impulsus(r�wnanie 1)

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