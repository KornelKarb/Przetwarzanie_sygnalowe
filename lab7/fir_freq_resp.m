function [mH,fiH,mHdB,f] = fir_freq_resp(b,N,fs)
  f=zeros(1,(N/2)-1);
  for k=0:(N/2)-1 
      f(k+1)=(k*fs/N)/N;
  endfor;
  imp = fir_imp_resp(b,N,fs);
  dft = fft(imp)(1:end/2);
  mH = abs(dft);
  fiH = spec_uarg(dft);
  mHdB = 20*log10(mH);
endfunction
