clear all
close all

N = 100;
fs = 100;
b = [1, 2 , 3];
x = [1, 0, 0, 0, 0];
x1 = [1, 1, 1, 1, 1];
y1 = fir_filter(x1, b);

[step, t1] = fir_step_resp(b, N, fs);
[imp, t2] = fir_imp_resp(b, N, fs);
[mH, fiH, mHdB, f] = fir_freq_resp(b, N, fs);


subplot(2,1,1)
plot(t1, step);
title("Odpowiedü skokowa filtru SOI");
ylabel("step(t)");
xlabel("t");
subplot(2,1,2);
plot(t2, imp);
title("Odpowiedü impulsowa filtru SOI");
ylabel("imp(t)");
xlabel("t[s]");

##subplot(3,1,1);
##plot(f, mH);
##title("Odpowiedü amplitudowa liniowa filtru SOI");
##ylabel("h(k)");
##xlabel("f[kHz]");
##subplot(3,1,2);
##plot(f, mHdB);
##title("Odpowiedü amplitudowa filtru SOI w dB");
##ylabel("h(k) [dB]");
##xlabel("f[kHz]");
##subplot(3,1,3);
##plot(f, fiH);
##title("Odpowiedü fazowa filtru SOI z korekcjπ fazy");
##ylabel("phase");
##xlabel("f[Hz]");