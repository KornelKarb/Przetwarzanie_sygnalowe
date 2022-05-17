#Lab nr3
#Sprawdziæ zadanie 5.3


clear all;
close all;
clc;


N = 16;
fs = 100;
time = gen_time(N,fs);
sin = gen_sin(time,3,4,0);


rfreq = gen_rfreq(N,fs); ##wywoa³nie rfreq
#disp(rfreq)
cfreq = gen_cfreq(N,fs); ##wywoa³nie cfreq
##disp(cfreq)
rdft = sig_rdft(sin);  ##wywoa³nie rdft
##disp(rdft)
irdft = sig_irdft(rdft); ## wywo³anie irdft
##disp(irdft)



figure(1)

subplot(3,1,1)
plot(time,sin);
xlabel("t [s]")       ## Wykres sinus
title("Sygna³ sinus")

subplot(3,1,2)
stem(rfreq,abs(rdft));
title("RDFT")         ## wykres rdft
xlabel("f [Hz]")
ylabel("amplituda")

subplot(3,1,3)
plot(rfreq,irdft); ## wykres irdft
title("IRDFT")


