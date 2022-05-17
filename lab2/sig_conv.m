
function z = sig_conv(x,y)
  Nx = length(x);
  Ny = length(y);
  z = zeros(1,Nx+Ny-1); #utworzenie pustej tablicy na wynik splotu
  for n=1:Nx+Ny # dla ka¿dego elementu tablicy wynikowej która musi byæ o jedne d³u¿sza ni¿ tablica poniewa¿ wpisywanie ominie kiedy n=1 
                ## poniewa¿ funkcja ta nigdy nie wykona siê gdy n-k jest ujemne lub równe 0 przez co omija pierwsz¹ liczbê
    c=0; # zsumuj odpowiednie iloczyny probek sygnalow
      for k=1:Ny
        if (n-k>0) && ((n-k)<=Nx)  # jesli pozwalaja na to indeksy probek
          c = c + (x(n-k)*y(k)); # dodaj do c odpowiedni iloczyn
         # disp(n); ## disp w celu wyrzucenia jakie liczby i ktore indeksy s¹ wykonywane
          #disp(k);
          disp(c);
        endif
      endfor;
      if n >= 2 #instrukcja if w celu przesuniêcia zapisu tablicy jedno w lewo
        z(n-1) = c; # zapis wyniku w tablicy
      endif
   endfor;
 
endfunction

##function z = sig_conv(x,y)
##  Nx = length(x);
##  Ny = length(y);
##  z = zeros(1,Nx+Ny); #utworzenie pustej tablicy na wynik splotu
##  for n=0:Nx+Ny-1 # dla ka¿dego elementu tablicy wynikowej
##    c=0; # zsumuj odpowiednie iloczyny probek sygnalow
##    for k=0:Ny-1
##      if ((n-k)<=0) && ((n-k)<Nx) # jesli pozwalaja na to indeksy probek
##        c = c + x(n-k)*y(k);  # dodaj do c odpowiedni iloczyn
##      endif
##   endfor;
##    z(n+1) = c; # zapis wyniku w tablicy
##  endfor;
##endfunction


