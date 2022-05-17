clear
clc
pkg load signal;
fc = 0.18;
fc2 = 0.3;
fs = 22000;
N = 1000;
M = 11;

blpf= sinc_filter(fc,M);
blpf2= sinc_filter(fc2,M);
bhpf = fir_inv(blpf);
bhpf2 = fir_inv(blpf2);

bpass = fir_series(blpf,bhpf2);

bstop = fir_parallel(blpf, bhpf2);

[y, t] = fir_imp_resp(blpf, N, fs);
[y2, t2] = fir_step_resp(blpf, N, fs);

[y3, t3] = fir_imp_resp(bhpf, N, fs);
[y4, t4] = fir_step_resp(bhpf, N, fs);

[mH,fiH,mHdB,f] = fir_freq_resp(blpf,N,fs);
[mH4,fiH4,mHdB4,f4] = fir_freq_resp(bhpf,N,fs);


[y5, t5] = fir_imp_resp(bpass, N, fs);
[y6, t6] = fir_step_resp(bpass, N, fs);
[mH2,fiH2,mHdB2,f2] = fir_freq_resp(bpass,N,fs);


figure(1)
subplot(5,1,1)
plot(t3,y3);
title("Filtr gornoprzepustowy");
subplot(5,1,2)
plot(t4,y4);
subplot(5,1,3)
plot(f4,mH4);
subplot(5,1,4)
plot(f4,mHdB4);
subplot(5,1,5)
plot(f4,fiH4)


figure(2)
subplot(5,1,1)
plot(t,y);
title("Filtr dolnoprzepustowy");
subplot(5,1,2)
plot(t,y);
subplot(5,1,3)
plot(f,mH);
subplot(5,1,4)
plot(f,mHdB);
subplot(5,1,5)
plot(f,fiH)


##figure(3)
##subplot(5,1,1)
##plot(t5, y5)
##title("OdpowiedŸ czêstotliwoœciowa filtru pasmowoprzepustowego");
##subplot(5,1,2)
##plot(t6, y6)
##subplot(5,1,3)
##plot(f2, mH2)
##subplot(5,1,4)
##plot(f2, mHdB2)
##subplot(5,1,5)
##plot(f2,fiH2)
##
##[x,fs] = audioread("Wroclaw.wav");
##player = audioplayer(x,fs);
##
##figure(4)
##subplot(4,1,1)
##plot(x)
##subplot(4,1,2)
##plot(abs(fft(x))(1:end/2))
##filtraudio = fir_filter(x,bpass);
##player = audioplayer(filteredaudio,fs);
##subplot(4,1,3);
##plot(filteredaudio);
##title("DŸwiêk przetworzony");
##subplot(4,1,4);
##plot(abs(fft(filtraudio))(1:end/2));

