function [y, t] = fir_imp_resp (b, N, fs)
   t = zeros(1,N);
    imp = zeros(1,N);
    for k=0:N-1
      t(k+1)=(k/fs);
      if t(k+1)==0
        imp(k+1)=1;
      elseif t(k+1)!=0;
        imp(k+1)=0;
      endif
     endfor
     y = fir_filter(imp, b);
endfunction
