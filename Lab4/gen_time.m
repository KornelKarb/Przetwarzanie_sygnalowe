#gen_time, która na podstawie podanej liczby próbek N i czêstotliwoœci próbkowania fs
#generuje jednowymiarow¹ tablicê zawieraj¹c¹ czasy kolejnych próbek, przy czym czas
#pierwszej z nich powinien wynosiæ 0.###


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