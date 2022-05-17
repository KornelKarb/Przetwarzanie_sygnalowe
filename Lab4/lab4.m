#Lab nr4


clear;
close all;
N=100;
fs=20;

time=gen_time(N, fs);
freq=gen_rfreq(N, fs);
cfreq=gen_cfreq(N, fs);
cfreq2=gen_cfreq(N*2-1,fs*2);

sin=gen_sin(time,0.2,2,0) ##time,fsin,A,fi
sin2=gen_sin(time,4,1,0)

gauss=gen_gauss(time,5,1); ##time, u, s

suma=sum(time, sin,sin2);


sinfft=fft(sin);
sinfftsig=sig_fft(sinfft);

##mnoz= iloczyn(time,sin,gauss);
##mnozfft=fft(mnoz);
##mnozfftsig=sig_fft(mnozfft);
##
###splot= splotmnoz(sin,gauss);
##splot = sig_conv(sin, gauss);
##splotfft=fft(splot);
##splotfftsig=sig_fft(splotfft);


mnoz = gauss.*sin
splot = sig_conv(sin, gauss);

sinfft= sig_fft(fft(sin));
gausfft = sig_fft(fft(gauss));
splotfft = sig_fft(fft(splot));
mnozfft = sig_fft(fft(mnoz));

freq = gen_cfreq(length(splot),fs);
freq2 = gen_cfreq(N,fs);

fftmnoz = sinfft.*gausfft;
fftsplot = sig_conv(sinfft,gausfft);

figure(1);
plot(time, sin);
title("Sinus")   
figure(2);
plot(time, suma);
title("Suma sinusów, przeciek widma")   
figure(3);
subplot(4,1,1)
stem(freq2, abs(mnozfft));
title("Mno¿enie fft")  
subplot(4,1,2)
stem(freq2, abs(fftmnoz));
title("Iloczyn") 
subplot(4,1,3)
stem(freq, abs(splotfft));
title("Splot") 
subplot(4,1,4)
stem(freq, abs(fftsplot));
title("FFT Splotu")

##figure(4);
##subplot(6,1,1)
##stem(cfreq, abs(sinfft));
##title("FFT z sinusa")  
###figure(3); 
##subplot(6,1,2)
##stem(cfreq, abs(sinfftsig));
##title("Znormalizowane FFT sinusa")  
##subplot(6,1,3)
##stem(cfreq, abs(mnozfftsig));
##title("Pomno¿one znormalizowane Gaussa i sinusa")  
##subplot(6,1,4)
##stem(cfreq, abs(mnozfft));
##title("Pomno¿one nieznormalizowane Gaussa i sinusa")   
##subplot(6,1,5)
##stem(cfreq2, abs(splotfftsig));
##title("Znormalizowany splot wykres Sinus gauss") 
##subplot(6,1,6)
##stem(cfreq2, abs(splotfft));
##title("Nieznormalizowany splot wykres Sinus gauss")  

