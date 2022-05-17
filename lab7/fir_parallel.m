function b = fir_parallel(b1, b2)
Nb1 = length(b1);
Nb2 = length(b2);
roznica = abs(Nb2-Nb1);

if Nb1 > Nb2
  b2 = [zeros(1, roznica/2), b2, zeros(1, roznica/2)];
elseif Nb2 > Nb1
  b1 = [zeros(1, roznica/2), b1, zeros(1, roznica/2)];
end
b = b1+b2;

end