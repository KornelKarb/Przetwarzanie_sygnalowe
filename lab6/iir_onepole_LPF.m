##Wspolczynnik dolnoprzepustowy jedobiegunowy
function [b, a] = iir_onepole_LPF(fc)
  fc = 0.2
  wspx = exp(-2*pi*fc);
  b(1) = 1 - wspx;
  a(1) = 1;
  a(2) = -1*wspx;
endfunction