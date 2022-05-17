#gen_triangle, która na podstawie wygenerowanej 
#tabeli z czasami próbek time generuje
#impuls trójk¹tny o amplitudzie A, 
#czasie narostu tr i czasie opadania tf.

function signal = gen_triangle (time, A, tr, tf)
  N = length(time);
  signal = zeros(1, N);
  for n = 1:N
    if time(n) < tr # jezeli trwa narost
      if (tr>0)     #oraz jezeli jest on dluzszy od 0 z³y znak
        signal(n) = A*time(n)/tr; 
      endif;
    elseif time(n) <= tr+tf # jezeli trwa spadek
      if (tf>0)
        signal(n) = A - A*(time(n)-tr)/tf;
      else
        signal(n) = A;
      endif
    endif
  endfor
endfunction

##function signal = gen_triangle (time, A, tr, tf)
##  N = length(time);
##  signal = zeros(1, N);
##  for n = 1:N
##    if time(n) < tr # jezeli trwa narost
##      if (tr<0)
##        signal(n) = A*time(n)/tr;
##      endif;
##    elseif time(n) <= tr+tf # jezeli trwa spadek
##      if (tf>0)
##        signal(n) = A - A*(time(n)-tr)/tf;
##      else
##        signal(n) = A;
##      endif
##    endif
##   endfor
##endfunction

