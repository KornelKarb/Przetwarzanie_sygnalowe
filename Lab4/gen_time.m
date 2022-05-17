#gen_time, kt�ra na podstawie podanej liczby pr�bek N i cz�stotliwo�ci pr�bkowania fs
#generuje jednowymiarow� tablic� zawieraj�c� czasy kolejnych pr�bek, przy czym czas
#pierwszej z nich powinien wynosi� 0.###


function time = gen_time (N, fs)
  time = zeros(1,N);
  for i=1:N
    time(i) = (i-1)/fs;
  endfor

endfunction


#function time = gen_time(N, fs)
  #time = zeros(1, N);
  #for i=1:N
    #time(i) = i/fs;
  #endfor
#endfunction