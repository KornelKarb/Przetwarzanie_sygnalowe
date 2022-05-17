#gen_sin, kt�ra na podstawie wygenerowanej tabeli 
#z czasami pr�bek time generuje tabel�
#z przebiegiem sinusoidalnym o cz�stotliwo�ci fsin,
#amplitudzie A i przesuni�ciu fazowym fi.

function signal = gen_sin(time, fsin, A, fi)
  signal = A*sin(time*2*pi*fsin + fi);
endfunction

##function signal=gen_sin(time, fsin, A, fi)
 ## signal = A*sin(time + fsin + fi);
##endfunction