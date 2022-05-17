##wspolczynnik pasmowoprzesutowy waskopasmowy
function [b, a] = iir_narrow_BF(f,BW)
  R = 1 - (3*BW);
  K = (1-(2*R*cos(2*pi*f))+R*R)/(2-2*cos(2*pi*f));
  b(1)= 1 - K;
  b(2)=2*(K-R)*cos(2*pi*f);
  b(3)=(R*R)-K;
  a(1)=1;
  a(2)=-2*R*cos(2*pi*f);
  a(3)=R*R;
endfunction