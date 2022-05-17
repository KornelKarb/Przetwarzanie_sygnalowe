clc
clear
pkg load signal
N = 200;
fs = 44100;
fc = 0.2;
BW = 0.1;

time = gen_time(N, fs);
delta = gen_delta(time);

[b, a] = iir_onepole_LPF(fc);
[b1, a1] = iir_onepole_HPF(fc);

[y, t] = iir_step_resp(b1, a1, N, fs);
[y1, t1] = iir_imp_resp(b1, a1, N, fs);
[mH, fiH, mHdB, f] = iir_freq_resp(b1, a1, N, fs);

[y2, t2] = iir_step_resp(b, a, N, fs);
[y3, t3] = iir_imp_resp(b,a,N,fs);
[mH1, fiH1, mHdB1, f1] = iir_freq_resp(b, a, N, fs);

[b3, a3] = iir_narrow_BF(fc, BW);
[y4, t4] = iir_step_resp(b3, a3, N, fs);
[y5, t5] = iir_imp_resp(b3, a3, N, fs);
[mH2, fiH2, mHdB2, f2] = iir_freq_resp(b3, a3, N, fs);

[b4,a4] = iir_narrow_NF(fc, BW);
[y6,t6] = iir_step_resp(b4, a4, N, fs);
[y7,t7] = iir_imp_resp(b4, a4, N, fs);
[mH3, fiH3, mHdB3, f3] = iir_freq_resp(b4, a4, N, fs);


n2 = 2;
n4 = 4;
n6 = 6;
Rp = 0.05;
Wc = fc/2;

[b5, a5] = cheby1(n2, Rp, Wc);
[mH4, fiH4, mHdB4, f4] = iir_freq_resp(b5, a5, N, fs);

[b6, a6] = cheby1(n4, Rp, Wc);
[mH5, fiH5, mHdB5, f5] = iir_freq_resp(b6, a6, N, fs);

[b7, a7] = cheby1(n6, Rp, Wc);
[mH6, fiH6, mHdB6, f6] = iir_freq_resp(b7, a7, N, fs);



##figure(1)
##subplot(5, 1, 1);
##plot(t1, y1);
##ylabel("imp");
##title("Górno");
##subplot(5, 1, 2);
##plot(t, y);
##ylabel("step");
##subplot(5, 1, 3);
##plot(f, mH);
##ylabel("mH");
##subplot(5, 1, 4);
##plot(f, mHdB);
##ylabel("mHdB");
##subplot(5, 1, 5);
##plot(fiH);
##
##figure(2)
##subplot(5, 1, 1);
##plot(t3, y3);
##ylabel("imp");
##title("Dolno");
##subplot(5, 1, 2);
##plot(t2, y2);
##ylabel("step");
##subplot(5, 1, 3);
##plot(f1, mH1);
##ylabel("mH");
##subplot(5, 1, 4);
##plot(f1, mHdB1);
##ylabel("mHdB");
##subplot(5, 1, 5);
##plot(fiH1);
##
##figure(3)
##subplot(4, 1, 1);
##plot(t5, y5);
##ylabel("imp");
##title("Pasmowoprzepustowy");
##subplot(4, 1, 2);
##plot(t4, y4);
##ylabel("step");
##subplot(4, 1, 3);
##plot(f2, mH2);
##ylabel("mH");
##subplot(4, 1, 4);
##plot(f2, mHdB2);
##ylabel("mHdB");
##subplot(5, 1, 5);
##plot(fiH2);
##
##
##
##
##
##figure(4)
##subplot(5, 1, 1);
##plot(t7, y7);
##ylabel("imp");
##title("Pasmowozaporowy");
##subplot(5, 1, 2);
##plot(t6, y6);
##ylabel("step");
##subplot(5, 1, 3);
##plot(f3, mH3);
##ylabel("mH");
##subplot(5, 1, 4);
##plot(f3, mHdB3);
##ylabel("mHdB");
##subplot(5, 1, 5);
##plot(fiH3);
##
##figure(5)
##plot(mHdB4, f4, 'r');
##hold on
##plot(mHdB5, f5, 'g');
##hold on
##plot(mHdB6, f6,'c');
##
##figure(6)
##subplot(3, 1, 1);
##plot(mHdB4, f4, 'r');
##hold on
##ylabel("dwubiegunowy");
##subplot(3, 1, 2);
##plot(mHdB5, f5, 'g');
##hold on
##ylabel("czterobiegunowy");
##subplot(3, 1, 3);
##plot(mHdB6, f6,'c');
##ylabel("szeœciobiegunowy");