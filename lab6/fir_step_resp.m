function [y, t] = fir_step_resp(b, N, fs)
  t = zeros(1,N);
  M = length(b);
  resp_step = ones(1,N);
  resp_step(1) = 0;
  for k = 0: N-1
    t(k+1)=k*(1/fs);
  endfor
  y=fir_filter(resp_step, b);
endfunction