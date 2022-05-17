clear all
close all

function y = dft(x); # funkcja która działa dla gówna w zadaniach przykładowych
  y = zeros(1, ceil(length(x)/2)+1);
  leny = length(y);
  lenx = length(x);
  
  for k = 1 : leny
    for n = 1 : lenx
      y(k) += 2* x(n) * exp( -i*(2*pi*(k-1)*(n-1))/lenx )
    endfor
    y(k) *= (1/lenx)
  endfor
  y(1)    *= 0.5;
  y(leny) *= 0.5;
endfunction

# gen_time(N, fs)
# gen_sin(time, fsin, A, fi)
#
# sig_conv(x,y) - splot x i y

### SPLOT 2 SYGNAŁÓW
x = [2,8,8,3,5,8,2,5];
y = [9,3,6,8,3];
splot = sig_conv(x,y);

wynikSplotu = splot(6); # 1 to 0!!!!!, wpisz to co masz podać +1

### SZYBKI KOMENTARZ zaznacz linijkę i CTRL+R
### SZYBKIE ODKOMENTOWANIE             CTRL+SHIFT+R

### OPCJONALNIE RYSOWANIE splotu
##subplot(3,1,1);
##stem(x);
##subplot(3,1,2);
##stem(y);
##subplot(3,1,3);
##stem(splot);

### WYLICZENIE WARTOŚCI DANEGO K W DFT (kompatybilne z przykładowymi zadaniami)
sygnal_dft = [9,2,4,1,4,2]
ydft = dft(sygnal_dft)
wynikDFT = ydft(2) # 1 to 0!!!!!, wpisz to co masz podać +1