#gen_sin, która na podstawie wygenerowanej tabeli 
#z czasami próbek time generuje tabelê
#z przebiegiem sinusoidalnym o czêstotliwoœci fsin,
#amplitudzie A i przesuniêciu fazowym fi.

function signal = gen_sin(time, fsin, A, fi)
  signal = A*sin(time*2*pi*fsin + fi);
endfunction

##function signal=gen_sin(time, fsin, A, fi)
 ## signal = A*sin(time + fsin + fi);
##endfunction