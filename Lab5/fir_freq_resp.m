function [mH, fiH, mHdB, f] = fir_freq_resp (b, N, fs)
  mHdB = zeros (1, N);
  mH = zeros (1, N);
  [imp, t] = fir_imp_resp(b, N, fs);
  f = gen_cfreq(N, fs);
  mH = abs(fft(imp));
  fiH = spec_uarg(fft(imp));
  mHdB = 20*log10(mH);
endfunction
