clc;
clear;

N = 100;
fs = 100;
time = gen_time(N,fs)
sin = gen_sin(time,3,4,0);

rfreq = gen_rfreq(N,fs);
cfreq = gen_cfreq(N,fs);
rdft = sig_rdft(sin);
irdft = sig_irdft(rdft);

figure(1)
subplot(3,1,1)
plot(time,sin);

title("Sygna³")

subplot(3,1,2)
plot(rfreq,abs(rdft));

title("rdft")
xlabel("f [Hz]")
ylabel("amplituda")
subplot(3,1,3)

plot(rfreq,irdft);

title("irdft")
