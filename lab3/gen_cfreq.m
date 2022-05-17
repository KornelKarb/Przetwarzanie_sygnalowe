##kt�ra ma generowa� cz�stotliwo�ci poszczeg�lnych sk�adowych widma Fouriera 
##sygna�u w jego og�lnej, zespolonej formie. Wynikiem dzia�ania funkcji ma by� 
##tabela z warto�ciami cz�stotliwo�ci sk�adowych DFTodpowiadaj�cych warto�ciomkz 
##przedzia�u k=-N/2+ 1...N/2.

function freq = gen_cfreq(N, fs)
  freq=zeros(1, N);
  for k = 0:N-1
    freq(k+1) = (k-N/2)*fs/N;
  endfor
endfunction