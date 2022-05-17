#gen_triangle, kt�ra na podstawie wygenerowanej 
#tabeli z czasami pr�bek time generuje
#impuls tr�jk�tny o amplitudzie A, 
#czasie narostu tr i czasie opadania tf.

function signal = gen_triangle (time, A, tr, tf)
  N = length(time);
  signal = zeros(1, N);
  for n = 1:N
    if time(n) < tr # jezeli trwa narost
      if (tr>0)     #oraz jezeli jest on dluzszy od 0 z�y znak
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

