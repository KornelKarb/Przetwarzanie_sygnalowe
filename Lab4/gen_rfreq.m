##Nale¿y usun¹æ b³êdy w funkcji do obliczania czêstotliwoœci poszczególnych 
##sk³adowych wid-ma  Fouriera  sygna³u  rzeczywistegogen_rfreq. 


function freq = gen_rfreq(N, fs)    #N-liczba próbek    fs-freq próbkowania       
  freq = zeros(1, N/2);
  for k = 0:(N/2)-1       
    freq(k+1) = k*fs/N;     
  endfor
endfunction

##function freq = gen_rfreq(N, fs)
##  freq = zeros(1, N/2);
##  for k = 0:N/2
##    freq(k) = k*fs/N;
##  endfor
##endfunction