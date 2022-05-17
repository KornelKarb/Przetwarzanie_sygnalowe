##która ma generowaæ czêstotliwoœci poszczególnych sk³adowych widma Fouriera 
##sygna³u w jego ogólnej, zespolonej formie. Wynikiem dzia³ania funkcji ma byæ 
##tabela z wartoœciami czêstotliwoœci sk³adowych DFTodpowiadaj¹cych wartoœciomkz 
##przedzia³u k=-N/2+ 1...N/2.

function freq = gen_cfreq(N, fs)
  freq=zeros(1, N);
  for k = 0:N-1
    freq(k+1) = (k-N/2)*fs/N;
  endfor
endfunction