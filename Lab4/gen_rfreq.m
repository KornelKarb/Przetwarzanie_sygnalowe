##Nale�y usun�� b��dy w funkcji do obliczania cz�stotliwo�ci poszczeg�lnych 
##sk�adowych wid-ma  Fouriera  sygna�u  rzeczywistegogen_rfreq. 


function freq = gen_rfreq(N, fs)    #N-liczba pr�bek    fs-freq pr�bkowania       
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