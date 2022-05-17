function y=sig_fft(x)
    N=length(x)
    y=zeros(1,N);
    k=floor(N/2);
    for i=1:N
      if i+k<=N
        y(i)=x(i+k); ## Tak aby agumenty w x nie przekroczy�y wielko�ci tablicy
      else
        y(i)=x(i-k); 
      endif
    endfor
endfunction
