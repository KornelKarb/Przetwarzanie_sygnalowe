##wspolczynnik gornoprzepustowy jednobiegunowy o czesto odciecia fc
function [b, a] = iir_onepole_HPF(fc)
  wspx = exp(-2*pi*fc);
  b(1) = (1+wspx)/2;
  b(2) = -1*(1+wspx)/2;
  a(1) = 1;
  a(2) = -1*wspx;
endfunction